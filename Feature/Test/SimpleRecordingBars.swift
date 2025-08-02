//
//  SimpleRecordingBars.swift
//  High-iOS
//
//  Created by 서지완 on 8/2/25.
//

import SwiftUI

struct SimpleRecordingBars: View {
    @Binding var isRecording: Bool
    @State private var heights: [CGFloat] = [20, 20, 20]
    @State private var timer: Timer?

    var body: some View {
        Circle()
            .frame(width: 164, height: 164)
            .foregroundStyle(.white)
            .shadow(color: .main.opacity(0.6), radius: 10, x: 0, y: 0)
            .overlay(
        HStack(spacing: 13) {
            ForEach(0..<3, id: \.self) { i in
                Capsule()
                    .color(.main)
                    .frame(width: 6, height: heights[i])
            }
        }
        .onAppear {
            if isRecording {
                startAnimating()
            }
        }
        .onChange(of: isRecording) { newValue in
            if newValue {
                startAnimating()
            } else {
                stopAnimating()
            }
        }
        )
    }

    private func startAnimating() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 0.3, repeats: true) { _ in
            withAnimation(.easeInOut(duration: 0.3)) {
                heights = heights.map { _ in CGFloat.random(in: 10...30) }
            }
        }
    }

    private func stopAnimating() {
        timer?.invalidate()
        timer = nil
        withAnimation(.easeInOut) {
            heights = [20, 20, 20] // 고정된 정지 상태
        }
    }
}

struct CustomRoundedCorner: Shape {
    var radius: CGFloat = 10
    var corners: UIRectCorner = [.topLeft, .topRight]

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}


#Preview {
    TestView()
}
