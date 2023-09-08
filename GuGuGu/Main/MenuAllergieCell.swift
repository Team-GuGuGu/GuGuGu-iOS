//
//  MenuAllergieCell.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 9/7/23.
//

import SwiftUI

struct MenuAllergieCell: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(.black, lineWidth: 1)
            .frame(width: 360, height: 115)
            .foregroundStyle(.white)
            .overlay {
                HStack(spacing: 0) {
                    Image("Menu-allergie")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("알러지 정보는?")
                            .font(Font.custom("Pretendard-SemiBold", size: 25))
                        Text("②우유 ⑤대두 ⑥밀 ⑨새우 ⑬아황산류 ⑮닭고기")
                            .font(Font.custom("Pretendard-Bold", size: 14))
                            .padding(.top, 5)
                    }
                    .padding(.leading, 2)
                    
                    Spacer()
                }
                .padding(.leading, 14)
            }
    }
}

#Preview {
    MenuAllergieCell()
}
