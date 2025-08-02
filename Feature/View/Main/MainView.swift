//
//  MainView.swift
//  High-iOS
//
//  Created by 서지완 on 8/2/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        //ScrollView {
        ZStack {
            Color.main
                //.ignoresSafeArea()

            VStack(spacing: 0) {
                // 위 여백만큼 Spacer로 띄움
                Spacer()
                    .frame(height: 135) // 원하시는 만큼 조절하세요

                // 아래 전체 덮는 회색 배경
                Rectangle()
                    .fill(Color.gray50)
                    .clipShape(CustomRoundedCorner(radius: 10, corners: [.topLeft, .topRight]))
                
                    .ignoresSafeArea()
            }

            VStack(spacing: 0) {
                HStack {
                    Text("홍길동님의 발표 고민,")
                        .font(.pretendard(.regular, size: 16))
                    Spacer()
                }
                .padding(.leading, 30)
                .padding(.top, 46)

                HStack(spacing: 2) {
                    Image("logo")
                        .resizable()
                        .frame(width: 73, height: 20)
                        .padding(.top, 2)
                    Text("이 해결해 드릴게요")
                        .font(.pretendard(.regular, size: 16))

                    Spacer()
                }
                .padding(.leading, 30)
                .padding(.bottom, 46)

                HStack(spacing: 0) {
                    Text("speak on")
                        .font(.pretendard(.semiBold, size: 16))
                        .padding(.top, 32)
                        .padding(.leading, 16)

                    Spacer()
                }

                HStack(spacing: 0) {
                    VStack(spacing: 8) {
                        Image("file")
                        Text("발표 연습 해보기")

                    }
                    Spacer()
                    Rectangle()
                        .frame(width: 1, height: 80)
                        .color(.gray100)
                    Spacer()
                    VStack(spacing: 8) {
                        Image("ppt")
                        Text("PPT대본 만들기")

                    }
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 16)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.white)
                        .shadow(color: .gray.opacity(0.4),radius: 2)

                )
                .padding(.horizontal, 16)
                .padding(.top, 10)

                HStack(spacing: 0) {
                    Text("대본 피드백")
                        .font(.pretendard(.semiBold, size: 16))
                        .padding(.top, 28)
                        .padding(.leading, 16)

                    Spacer()
                }

                VStack(spacing: 0) {
                    HStack(spacing: 0) {
                        Text("내가 만든 대본 피드백 받기")

                        Spacer()

                        Image("pptFile")
                    }
                }
                .padding(.vertical, 4)
                .padding(.horizontal, 24)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.white)
                        .shadow(color: .gray.opacity(0.4),radius: 2)

                )
                .padding(.horizontal, 16)
                .padding(.top, 10)

                Spacer()
            }
        }
    }
    }
//}


#Preview {
    MainView()
}
