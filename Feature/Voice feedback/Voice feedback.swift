//
//  Voice feedback.swift
//  High-iOS
//
//  Created by 김준표 on 8/3/25.
//

import SwiftUI

struct Voice_feedback: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            HStack{
                Text("발표 요약")
                    .font(.pretendard(.bold, size: 18))
                
                
                Spacer()
            }
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
            
            Spacer()
        }
        .padding(.horizontal, 28)
        .padding(.top, 68)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color(white: 0.97))
                .padding(.horizontal, 16)
        )
        
    }
}
    

#Preview {
    Voice_feedback()
}
