//
//  CalorieCell.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 9/7/23.
//

import SwiftUI

struct MenuCalorieCell: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(.black, lineWidth: 1)
            .frame(width: 360, height: 115)
            .foregroundStyle(.white)
            .overlay {
                HStack(spacing: 0) {
                    Image("Menu-calorie")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("아침의 칼로리는?")
                            .font(Font.custom("Pretendard-SemiBold", size: 25))
                        Text("482.4 Kcal")
                            .font(Font.custom("Pretendard-SemiBold", size: 20))
                    }
                    .padding(.leading, 2)
                    
                    Spacer()
                }
                .padding(.leading, 14)
            }
    }
}

#Preview {
    MenuCalorieCell()
}
