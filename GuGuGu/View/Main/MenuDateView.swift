//
//  MenuDateView.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 9/8/23.
//

import SwiftUI

struct MenuDateView: View {
    let dateFormatter = DateFormatter()
    
    init() {
        dateFormatter.dateFormat = "yyyy년 MM월 dd일"
    }

    var body: some View {
        HStack(spacing: 19) {
            Image(systemName: "chevron.left")
                .resizable()
                .scaledToFill()
                .frame(width: 12, height: 26)
                .foregroundStyle(Color.black)
            
            RoundedRectangle(cornerRadius: 20.0)
                .stroke(.black, lineWidth: 1)
                .foregroundStyle(Color.white)
                .frame(width: 150, height: 40, alignment: .center)
                .overlay(
                    Text(dateFormatter.string(from: Date.now))
                        .font(.custom("Pretendard-Medium", size: 15))
                        .foregroundStyle(Color.black)
                )
            
            Image(systemName: "chevron.right")
                .resizable()
                .scaledToFill()
                .frame(width: 12, height: 26)
                .foregroundStyle(Color.black)
        }
            
    }
    
}

#Preview {
    MenuDateView()
}