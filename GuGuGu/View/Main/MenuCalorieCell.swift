//
//  CalorieCell.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 9/7/23.
//

import SwiftUI

struct MenuCalorieCell: View {
    
    var calorie: String
    let width: CGFloat
    var time: String
    
    init(calorie: String, width: CGFloat, time: String) {
        self.calorie = calorie
        self.width = width
        self.time = time
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .strokeBorder(.black, lineWidth: 1)
            .frame(width: width, height: 115)
            .foregroundStyle(.white)
            .overlay {
                HStack(spacing: 0) {
                    Image("Menu-calorie")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("\(transTime(time: time))의 칼로리는?")
                            .font(Font.custom("Pretendard-SemiBold", size: 25))
                        Text("\(calorie)")
                            .font(Font.custom("Pretendard-SemiBold", size: 20))
                    }
                    .padding(.leading, 2)
                    
                    Spacer()
                }
                .padding(.leading, 14)
            }
    }
}

