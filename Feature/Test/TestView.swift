//
//  TestView.swift
//  High-iOS
//
//  Created by 서지완 on 8/2/25.
//

import SwiftUI

struct TestView: View {
    @StateObject private var audioManager = AudioManager()

    var body: some View {
        VStack {
            SimpleRecordingBars(isRecording: $audioManager.isRecording)

            Button(action: {
                audioManager.toggleRecording()
            }) {
                Text(audioManager.isRecording ? "녹음 중지" : "녹음 시작")
                    .padding()
                    .background(audioManager.isRecording ? .red : .blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .onAppear {
            audioManager.requestPermission()
        }
    }
}

#Preview {
    TestView()
}
