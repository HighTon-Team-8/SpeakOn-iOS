//
//  MikeView.swift
//  High-iOS
//
//  Created by 서지완 on 8/3/25.
//

import SwiftUI

struct MikeView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                Image("backButton")
                    .padding(.top, 14)
                    .padding(.leading, 16)
                Spacer()
            }

            Text("발표 연습을 시작해보세요")
                .color(.gray200)
                .font(.pretendard(.medium, size: 28))
                .padding(.top, 216)

            Spacer()


            Image("mike")
        }
    }
}

#Preview {
    MikeView()
}
