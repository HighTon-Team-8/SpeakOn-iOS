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
                        .padding(.top, 16)

                    // 탭 버튼
                    FeedbackTabSelector(selectedTab: $selectedTab)
                        .padding(.top, 16)

                    // 선택된 탭 내용
                    Group {
                        switch selectedTab {
                        case 0:
                            asd()
                        case 1:
                            ohh()
                        case 2:
                            zxs()
                        default:
                            EmptyView()
                        }
                    }
                    .padding(.top, 16)

                } // 발표 요약 VStack
                .padding(.vertical, 16)
                .padding(.horizontal, 12)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(Color(white: 0.97))
                )

                Spacer()
            } // 전체 VStack
            .padding(.top)
            .padding(.horizontal, 16)
        } // ScrollView
    } // body
} // Voice_feedback

struct FeedbackTabSelector: View {
    @Binding var selectedTab: Int
    let titles = ["말투와 속도", "발음 정확도", "발화 크기"]

    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<titles.count, id: \.self) { index in
                Text(titles[index])
                    .font(.pretendard(.medium, size: 14))
                    .frame(width: 100, height: 64)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(selectedTab == index ? Color.white : Color.gray.opacity(0.2))
                    )
                    .foregroundColor(selectedTab == index ? .black : .gray)
                    .onTapGesture {
                        selectedTab = index
                    }
            }
        }
    }
}

struct asd: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("말투와 속도")
                .font(.pretendard(.semiBold, size: 14))
                .padding(.top, 16)

            Text("초반에 주저하는 말투가 반복됐어요. 도입은 짧고 단단하게 시작하는 게 좋아요...")
                .font(.pretendard(.medium, size: 12))
                .padding(.top, 8)
        }
    }
}

struct ohh: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("발음 정확도")
                .font(.pretendard(.semiBold, size: 14))
                .padding(.top, 16)

            Text("몇몇 단어의 끝 발음이 흐려져서 전달력이 조금 아쉬웠습니다...")
                .font(.pretendard(.medium, size: 12))
                .padding(.top, 8)
        }
    }
}

struct zxs: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("발화 크기")
                .font(.pretendard(.semiBold, size: 14))
                .padding(.top, 16)

            Text("일부 구간에서 목소리가 작아져서 뒤쪽 청중은 듣기 어려웠을 수 있어요...")
                .font(.pretendard(.medium, size: 12))
                .padding(.top, 8)
        }
    }
}


#Preview {
    Voice_feedback()
}

