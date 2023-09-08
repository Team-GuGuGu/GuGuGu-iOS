//
//  MenuDateView.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 9/8/23.
//

import SwiftUI

struct MenuDateView: View {
    var body: some View {
        HStack(spacing: 19) {
            Image(systemName: "chevron.left")
                .resizable()
                .scaledToFill()
                .frame(width: 12, height: 26)
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width: 150, height: 40, alignment: .center)
                .foregroundColor(Color("GuGuGu-gray"))
                .overlay(
                    Text("2023년 8월 18일")
                        .font(.custom("Pretendard-Medium", size: 15))
                )
            
            Image(systemName: "chevron.right")
                .resizable()
                .scaledToFill()
                .frame(width: 12, height: 26)
            
        }
    }
}

#Preview {
    MenuDateView()
}
