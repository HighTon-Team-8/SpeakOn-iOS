//
//  TabView.swift
//  High-iOS
//
//  Created by 서지완 on 8/2/25.
//

import SwiftUI

import SwiftUI

struct TabView: View {
    @State var selectedTabIndex: Int = 0

    var body: some View {
        ZStack {
            // 콘텐츠
            Group {
                switch selectedTabIndex {
                case 0:
                    MainView()
                        .padding(.bottom, 100) // 탭바 영역 확보
                case 1:
                    Text("Page View")
                        .padding(.bottom, 100)
                case 2:
                    Text("My View")
                        .padding(.bottom, 100)
                default:
                    Text("Unknown")
                }
            }
            .edgesIgnoringSafeArea(.bottom)

            // 탭바는 항상 아래 고정
            VStack {
                Spacer()

                HStack {
                    Button(action: { selectedTabIndex = 0 }) {
                        Image(selectedTabIndex == 0 ? "homeOn" : "homeOff")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    Spacer()
                    Button(action: { selectedTabIndex = 1 }) {
                        Image(selectedTabIndex == 1 ? "pageOn" : "pageOff")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    Spacer()
                    Button(action: { selectedTabIndex = 2 }) {
                        Image(selectedTabIndex == 2 ? "myOn" : "myOff")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                }
                .padding(.horizontal, 40)
                .padding(.vertical, 12)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.white)
                        .shadow(radius: 3)
                )
                .padding(.bottom, 30)
                .padding(.horizontal, 20)
            }
        }
    }
}


#Preview {
    TabView()
}

