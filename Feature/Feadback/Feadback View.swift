//
//  Feadback View.swift
//  High-iOS
//
//  Created by 김준표 on 8/2/25.
//

import SwiftUI

struct FeadbackView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // 상단 제목
                HStack {
                    dText("피드백내역")
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
        VStack(alignment: .leading) {
            Text("제목입니다")
            Text("피더부여조여ㅑ조얃조랴ㅕㅗ져ㅑ로쟈ㅕ롲댜ㅕ로ㅑㅈ도랴ㅕㅈ도랴ㅕㅗㅈ댜옵쟈ㅕ오뱌오오벼ㅗ야ㅕ보여ㅑㅈ보야ㅕㅗㅂㅈ야ㅕㅗㅂ쟈ㅕ옵쟈ㅗ여ㅑㅂ조ㅕㅑ어ㅐㅑㅂ저애ㅑㅂ저야ㅐㅂ저야ㅐㅂ저애ㅑㅓㅈ배ㅑnjhiuwfhifheiufhuifhweiufhweiuhfiwuehfiuwehfiuhhfwuehfiuwehfiuwfwhjefuhweufihwifuhwfuihwuihfwuiwheifuhewiufhweiufhuihfuewhfiuwehfhuehfuiwhfuiwhfiuwh")
                
            
            
            
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
    FeadbackView()
}
