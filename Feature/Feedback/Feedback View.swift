//
//  Feadback View.swift
//  High-iOS
//
//  Created by 김준표 on 8/2/25.
//

import SwiftUI

struct FeedbackView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // 상단 제목
                HStack {
                    Text("피드백내역")
                        .padding(.leading, 16)
                        .font(.pretendard(.bold, size: 16))
                    Spacer()
                }

                // 탭 (피드백 내역 / 대본 작성)
                HStack {
                    Button(action: {
                        withAnimation {
                            selectedTab = 0
                        }
                    }) {
                        Text("피드백 내역")
                            .font(.pretendard(.bold, size: 16))
                            .foregroundColor(selectedTab == 0 ? .black : .gray)
                            .padding(.leading, 71)
                            
                    }
                    //.frame(maxWidth: .infinity)
                    
                    Spacer()
                    Button(action: {
                        withAnimation {
                            selectedTab = 1
                        }
                    }) {
                        Text("대본 작성")
                            .font(.pretendard(.bold, size: 16))
                            .foregroundColor(selectedTab == 1 ? .black : .gray)
                            .padding(.trailing, 79)
                    }
                    //.frame(maxWidth: .infinity)
                }
                //.padding(.horizontal, 55)
                .padding(.top, 39)

                // 파란색 밑줄 막대기
                ZStack(alignment: selectedTab == 0 ? .leading : .trailing) {
                    Rectangle()
                        .foregroundColor(.gray.opacity(0.3))
                        .frame(height: 1)
                    
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 182, height: 3)
                        .animation(.easeInOut(duration: 0.3), value: selectedTab)
                        .padding(.horizontal, 14)
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 8)

                if selectedTab == 0 {
                    Mytext()
                        .padding(.top, 10)
                } else {
                    ScriptView()
                        .padding(.top, 10)
                }
                
                Spacer()
                
            }
        }
    }
}

struct Mytext: View {
    var body: some View{
            
            
        VStack(alignment: .leading, spacing: 0) {
            

            
            Text("7월 26일 (토)")
                .font(.pretendard(.medium, size: 12))
                .foregroundColor(Color(white:0.6))
            Text("발표 요약")
                .font(.pretendard(.bold, size: 18))
                .padding(.top, 11)
            Text("자기소개 & 발표 목적")
                .font(.pretendard(.semiBold, size: 14))
                .padding(.top, 9)
            Text("간단히 자기소개를 하고, 이번 발표에서는 그동안 작업한 프로젝트와 디자인 과정을 소개했습니다. ㅇㅈ어쟈오ㅓ쟈어ㅑ저야저야저야ㅓㅈ야ㅓㅈ야ㅓㅑ")
                .lineLimit(2)
                .padding(.top, 8)
                .font(.pretendard(.medium, size: 12))
                .foregroundColor(Color(white:0.6))
                
            
                Rectangle()
                    .foregroundColor(Color.black)
                    .frame(height: 1)
                    .padding(.top, 20)
           
            
            
            HStack(spacing: 0) {
                Spacer()
                Text("보러 가기")
                    .background(Color.white)
                    .padding(.vertical,7)
                    .padding(.horizontal, 45)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.black, lineWidth: 1)
                    )
                    .padding(.top, 8)
                
            }
                //.padding(.)
                
        }
        
        .padding(.horizontal, 50)
        .padding(.top, 21)
        .padding(.vertical, 20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.white)
                .padding(.top, 21)
                .padding(.horizontal, 16)
                .shadow(color: Color.gray.opacity(0.3), radius:5)
        )
        
        
    }
}

struct ScriptView: View {
    var body: some View{
        VStack(alignment: .leading) {
            Text("제목입니다")
            Text("ㅁㅇㄴㄹㅁㅇㄴㄹㅁㄴㅇㄹㅁㅇㄴㄹㅁㄴㄹㅁㄴㅇㄹㅁㄹㅇㅁㅇㄹㄴ")
                
            
            
            
        }
        .padding(.horizontal, 50)
        .padding(.vertical, 20)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(white: 0.9))
                .padding(.horizontal, 16)
        )
        
        
    }
}

#Preview {
    FeedbackView()
}

