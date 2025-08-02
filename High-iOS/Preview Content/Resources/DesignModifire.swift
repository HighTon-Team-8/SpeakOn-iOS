//
//  DesignModifire.swift
//  High-iOS
//
//  Created by 서지완 on 8/2/25.
//

import SwiftUI

enum PretendardStyle: String {
    case black = "Pretendard-Black"
    case bold = "Pretendard-Bold"
    case extraBold = "Pretendard-ExtraBold"
    case extraLight = "Pretendard-ExtraLight"
    case light = "Pretendard-Light"
    case medium = "Pretendard-Medium"
    case regular = "Pretendard-Regular"
    case semiBold = "Pretendard-SemiBold"
    case thin = "Pretendard-Thin"
}

extension Font {
    static func pretendard(_ style: PretendardStyle, size: CGFloat) -> Font {
        return .custom(style.rawValue, size: size)
    }
}

enum ColorStyle: String {
    case error = "Error"
    // 여기부터가 찐인뎅 어쩔거야
    case main = "main"
    case gray50 = "gray50"
    case gray100 = "gray100"
    case gray200 = "gray200"
    case gray300 = "gray300"
}

extension Color {
    static func color(_ style: ColorStyle) -> Color {
        return Color(style.rawValue)
    }
}

extension Text {
    func color(_ style: ColorStyle) -> Text {
        return self.foregroundColor(.color(style))
    }
}

extension View {
    func color(_ style: ColorStyle) -> some View {
        self.foregroundColor(.color(style))
    }
}

//MARK: 폰트, 컬러 사용 양식
struct DesignModifireView: View {
    var body: some View {
        Text("Hello, Pretendard!")
            .font(.pretendard(.bold, size: 20))
            .color(.main)
            .font(.pretendard(.medium, size: 16))
    }
}

#Preview {
    DesignModifireView()
}
