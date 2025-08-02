//
//  MikeView.swift
//  High-iOS
//
//  Created by 서지완 on 8/3/25.
//

import SwiftUI
import AVFoundation

struct MikeView: View {
    @State var mikeState: Bool = false
    @StateObject private var audioManager = AudioManager()
    @Environment(\.dismiss) private var dismiss

    @State private var isLoading = false
    @State private var showText1 = false
    @State private var showText2 = false

    @State private var dots: String = ""
    @State private var timer: Timer?

    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Button {
                        dismiss()
                    } label: {
                        Image("backButton")
                            .padding(.top, 14)
                            .padding(.leading, 16)
                    }

                    Spacer()
                }

                Text(mikeState ? "듣고 있습니다\(dots)" : "발표 연습을 시작해보세요")
                    .color(.gray200)
                    .font(.pretendard(.medium, size: 28))
                    .padding(.top, 216)
                    .onAppear {
                        if mikeState {
                            startDotAnimation()
                        }
                    }
                    .onChange(of: mikeState) { newValue in
                        if newValue {
                            startDotAnimation()
                        } else {
                            stopDotAnimation()
                        }
                    }

                Spacer()

                if mikeState == false {
                    Image("mike")
                        .padding(.bottom, 50)
                        .onTapGesture {
                            audioManager.toggleRecording()
                            mikeState.toggle()
                        }
                } else {
                    SimpleRecordingBars(isRecording: $audioManager.isRecording)
                        .padding(.bottom, 50)
                        .onTapGesture {
                            startLoadingAnimation()
                        }
                }
            }

            if isLoading {
                Color.black.opacity(0.4)
                    .ignoresSafeArea()

                VStack(spacing: 12) {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .scaleEffect(1.5)

                    if showText1 {
                        Text("잠시만요...")
                            .foregroundColor(.white)
                            .font(.pretendard(.semiBold, size: 20))
                            .transition(.opacity)
                    }

                    if showText2 {
                        Text("AI가 발표 내용을 요약 및 피드백 중입니다...")
                            .foregroundColor(.white)
                            .font(.pretendard(.medium, size: 16))
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 24)
                            .transition(.opacity)
                    }
                }
                .animation(.easeInOut(duration: 0.5), value: showText1)
                .animation(.easeInOut(duration: 0.5), value: showText2)
            }
        }
    }

    private func startLoadingAnimation() {
        isLoading = true
        showText1 = false
        showText2 = false

        // Step 1: 녹음 종료
        audioManager.toggleRecording()
        stopDotAnimation()

        // Step 2: 텍스트 순차 등장
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            withAnimation {
                showText1 = true
            }
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            withAnimation {
                showText2 = true
            }
        }

        // Step 3: 3초 후 로딩 종료 및 마이크 상태 초기화
        DispatchQueue.main.asyncAfter(deadline: .now() + 6.0) {
            withAnimation {
                isLoading = false
                showText1 = false
                showText2 = false
                mikeState.toggle()
            }
        }
    }

    private func startDotAnimation() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { _ in
            switch dots {
            case "":
                dots = "."
            case ".":
                dots = ".."
            case "..":
                dots = "..."
            default:
                dots = ""
            }
        }
    }

    private func stopDotAnimation() {
        timer?.invalidate()
        timer = nil
        dots = ""
    }
}

#Preview {
    MikeView()
}
