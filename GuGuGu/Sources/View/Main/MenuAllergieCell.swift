//
//  MenuAllergieCell.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 9/7/23.
//

import SwiftUI

struct MenuAllergieCell: View {
    
    var allergy: String
    let width: CGFloat
    
    init(allergy: String, width: CGFloat) {
        self.allergy = allergy
        self.width = width
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .strokeBorder(.black, lineWidth: 1)
            .frame(width: width, height: 115)
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
                        Text("\(allergy)")
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
