//
//  Mypage View.swift
//  High-iOS
//
//  Created by 김준표 on 8/3/25.
//

import SwiftUI

struct Mypage_View: View {
    var body: some View {
            
        VStack(alignment: .leading, spacing : 0){
            Image("aaa")
//                .resizable()
//                .frame(width: 50,height: 50)
                .padding(.top,47)
                .padding(.leading,28)
                
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
        VStack(alignment: .leading, spacing: 0){
            
            
            
            ZStack(alignment: .leading){
                
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(Color.white)
                    .shadow(radius: 3)
                    .frame(width:361, height: 57)
                
                
                Text("내 평균 점수: 3점")
                    .font(.pretendard(.medium, size: 16))
                    .padding(.leading,24)
                
            }
            .padding(.top,28)
            
            
            
        }
        Spacer()
      }
    }

#Preview {
    Mypage_View()
}
