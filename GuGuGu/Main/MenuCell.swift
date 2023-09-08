//
//  MenuCell.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 9/7/23.
//

import SwiftUI

struct MenuCell: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(.black, lineWidth: 1)
            .frame(width: 360, height: 215)
            .foregroundStyle(.white)
            .overlay {
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 0) {
                        Image("Menu-breakfast")
                            .resizable()
                            .frame(width: 60, height: 60)
                        
                        Text("아침")
                            .font(Font.custom("Pretendard-SemiBold", size: 25))
                            .padding(.leading, 10)
                        
                        Spacer()
                    }
                    .padding(.top, 12)
                    
                    Text("오늘의 아침은?")
                        .font(Font.custom("Pretendard-Bold", size: 15))
                        .padding(.top, 10)
                    
                    
                    Text("치즈닭갈비주먹밥\n깍두기\n*고래밥시리얼+우유\n배도라지주스\n감자토마토그라탕")
                        .font(Font.custom("Pretendard-Bold", size: 14))
                        .padding(.top, 5)
                    
                    Spacer()
                }
                .padding(.leading, 15)
                
            }
        
    }
}

#Preview {
    MenuCell()
}
