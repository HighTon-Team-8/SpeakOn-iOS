//
//  Voice feedback.swift
//  High-iOS
//
//  Created by 김준표 on 8/3/25.
//

import SwiftUI

struct Voice_feedback: View {
    @State private var selectedTab = 0
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                
                HStack {
                    Image("backButton")
                        .padding(.bottom, 6)
                    Spacer()
                }

                VStack(alignment: .leading, spacing: 0) {
                    Text("발표 요약")
                        .font(.pretendard(.bold, size: 18))

                    Text("자기소개 & 발표 목적")
                        .font(.pretendard(.semiBold, size: 14))
                        .padding(.top, 9)

                    Text("간단히 자기소개를 하고, 이번 발표에서는 그동안 작업한 프로젝트와 디자인 과정을 소개했습니다.")
                        .font(.pretendard(.medium, size: 12))
                        .padding(.top, 8)

                    Text("프로젝트 소개")
                        .font(.pretendard(.semiBold, size: 14))
                        .padding(.top, 9)

                    Text("대표 포트폴리오 작업 2~3가지를 중심으로 설명했습니다. 각 프로젝트의 기획 배경, 사용자 문제, 해결 과정, 디자인 결과물 중심으로 말했습니다")
                        .font(.pretendard(.medium, size: 12))
                        .padding(.top, 8)

                    Text("사용자의 도구와 방식")
                        .font(.pretendard(.semiBold, size: 14))
                        .padding(.top, 9)

                    Text("Figma, Photoshop, Webflow, Notion 등 다양한 툴을 활용했으며, 사용자 조사부터 시안 제작, 피드백 반영까지 전체 UX/UI 프로세스를 직접 경험했습니다.")
                        .font(.pretendard(.medium, size: 12))
                        .padding(.top, 8)

                    Text("느낀 점 & 성장한 부분")
                        .font(.pretendard(.semiBold, size: 14))
                        .padding(.top, 9)

                    Text("실제 작업을 통해 문제 해결력과 디자인 논리를 많이 키웠고, 팀 협업, 일정 관리, 사용자 중심 사고의 중요성을 깨달았습니다.")
                        .font(.pretendard(.medium, size: 12))
                        .padding(.top, 8)

                    Text("마무리")
                        .font(.pretendard(.semiBold, size: 14))
                        .padding(.top, 9)

                    Text("발표를 통해 제 디자인 방향성과 강점을 다시 돌아볼 수 있었고, 앞으로 더 나은 사용 경험을 만들기 위해 노력하겠다는 다짐으로 마무리했습니다")
                        .font(.pretendard(.medium, size: 12))
                        .padding(.top, 8)
                    
                    Text("발표 피드백: 3점⭐️")
                        .font(.pretendard(.bold, size: 18))
                        .padding(.top,16)
                    
                    GeometryReader { geometry in
                        HStack(spacing: 12) {
                            Text("말투와 속도")
                                .font(.pretendard(.medium, size: 14))
                                .frame(width: 100, height: 64)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.white)
                                )

                            Text("발음 정확도")
                                .font(.pretendard(.medium, size: 14))
                                .frame(width: 100, height: 64)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.white)
                                )

                            Text("발화 크기")
                                .font(.pretendard(.medium, size: 14))
                                .frame(width: 100, height: 64)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color.white)
                                )
                        }
                        .position(x: geometry.size.width / 2, y: 64 / 2)
                        
                    }
                    .frame(height: 64)
                    .padding(.top, 16)


                        
                } //발표요약 Vstack
                .padding(.vertical, 16)
                .padding(.horizontal, 12)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(white: 0.97))
                )

                Spacer()
            } // VStack (전체 내용)
            .padding(.top)
            .padding(.horizontal, 16)
        }// ScrollView
    }// body
}// struct Voice_feedback

    

struct asd: View{
    var body: some View{
        
        VStack(alignment: .leading, spacing: 0){
            Text("말투와 속도")
                .font(.pretendard(.semiBold, size: 14))
                .padding(.top, 16)
            
            Text("초반에 “음… 그래서… 제가 한 건…” 식으로 약간 주저하는 말투가 반복됐어. → 청중 입장에선 발표자 자신이 내용을 확신하지 못하는 느낌을 줄 수 있어. 추천: 도입은 짧고 단단하게 시작하는 게 좋아. 예: “안녕하세요. 저는 이번에 ‘AI 기술의 일상화’라는 주제로 발표를 맡은  홍길동 입니다.” 주저하는 표현보다 명확한 키워드를 앞세우면 발표에 신뢰가 생겨. 중간에 말이 빨라지는 구간이 있었어. 특히 AI 활용 사례를 설명할 때 (예: 유튜브, 자율주행, 음성비서 등), 정보가 한꺼번에 전달돼서 청중이 따라가기 조금 버거웠을 수 있어. 추천: 중요한 용어나 사례 사이에 1~2초 멈춤을 주면 정보가 더 잘 정리돼서 들어. 강조하고 싶은 부분은 속도를 줄이고, 쉬운 단어라도 천천히 말해주면 좋아.")
                .font(.pretendard(.medium, size: 12))
                .padding(.top, 8)
        }
    }
}
    

#Preview {
    Voice_feedback()
}
