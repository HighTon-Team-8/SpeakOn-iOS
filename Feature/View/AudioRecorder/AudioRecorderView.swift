//
//  AudioRecorderView.swift
//  High-iOS
//
//  Created by 서지완 on 8/2/25.
//

import SwiftUI
import AVFoundation

struct AudioRecorderView: View {
    @StateObject private var audioManager = AudioManager()

    var body: some View {
        VStack(spacing: 30) {
            Text(audioManager.isRecording ? "녹음 중..." : "녹음 대기 중")
                .font(.title)

            Button(action: {
                audioManager.toggleRecording()
            }) {
                Text(audioManager.isRecording ? "녹음 중지" : "녹음 시작")
                    .font(.headline)
                    .padding()
                    .frame(width: 200)
                    .background(audioManager.isRecording ? Color.red : Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            Button(action: {
                audioManager.playRecording()
            }) {
                Text("녹음 재생")
                    .font(.headline)
                    .padding()
                    .frame(width: 200)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .disabled(!audioManager.isRecordingFinished)
        }
        .padding()
        .onAppear {
            audioManager.requestPermission()
        }
    }
}

class AudioManager: NSObject, ObservableObject, AVAudioRecorderDelegate {
    var audioRecorder: AVAudioRecorder?
    var audioPlayer: AVAudioPlayer?

    @Published var isRecording = false
    @Published var isRecordingFinished = false

    private var recordingURL: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0].appendingPathComponent("recording.wav")
    }

    func requestPermission() {
        AVAudioSession.sharedInstance().requestRecordPermission { granted in
            if !granted {
                print("마이크 권한이 필요합니다.")
            }
        }
    }

    func toggleRecording() {
        if isRecording {
            stopRecording()
        } else {
            startRecording()
        }
    }

    func startRecording() {
        let settings: [String: Any] = [
            AVFormatIDKey: Int(kAudioFormatLinearPCM),
            AVSampleRateKey: 44100.0,
            AVNumberOfChannelsKey: 1,
            AVLinearPCMBitDepthKey: 16,
            AVLinearPCMIsBigEndianKey: false,
            AVLinearPCMIsFloatKey: false
        ]

        do {
            let session = AVAudioSession.sharedInstance()
            try session.setCategory(.playAndRecord, mode: .default, options: [.defaultToSpeaker])
            try session.setActive(true)

            audioRecorder = try AVAudioRecorder(url: recordingURL, settings: settings)
            audioRecorder?.delegate = self
            audioRecorder?.record()
            isRecording = true
            isRecordingFinished = false
            print("녹음 시작 ✅")
        } catch {
            print("녹음 시작 실패: \(error.localizedDescription)")
        }
    }



    func stopRecording() {
        audioRecorder?.stop()
        isRecording = false
        isRecordingFinished = true

        if FileManager.default.fileExists(atPath: recordingURL.path) {
                print("녹음 파일 존재함 ✅")
            } else {
                print("녹음 파일 없음 ❌")
            }
    }

    func playRecording() {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: recordingURL)
            audioPlayer?.play()
        } catch {
            print("재생 실패: \(error.localizedDescription)")
        }
    }
}
