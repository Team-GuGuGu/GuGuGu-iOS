//
//  MenuCell.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 9/7/23.
//

import SwiftUI

struct MenuCell: View {
    
    var menu: String
    
    let width: CGFloat
    
    var time: String
    
    @State var height: CGFloat = 200
    
    init(menu: String, width: CGFloat, time: String) {
        self.menu = menu
        self.width = width
        self.time = time
    }
    
    
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .strokeBorder(Color.black, lineWidth: 1)
            .frame(width: width, height: height)
            .foregroundStyle(.white)
            .overlay {
                VStack(alignment: .leading, spacing: 8) {
                    HStack(spacing: 0) {
                        Image("Menu-\(time)")
                            .resizable()
                            .frame(width: 60, height: 60)
                        
                        Text("\(transTime(time: time))")
                            .foregroundStyle(Color.black)
                            .font(Font.custom("Pretendard-SemiBold", size: 25))
                            .padding(.leading, 10)
                        
                        Spacer()
                    }
                    
                    Text("오늘의 \(transTime(time: time))은?")
                        .foregroundStyle(Color.black)
                        .font(Font.custom("Pretendard-Bold", size: 15))
                    
                    HStack {
                        Text("\(menu)")
                            .foregroundStyle(Color.black)
                            .font(Font.custom("Pretendard-Bold", size: 14))
                            .multilineTextAlignment(.leading)
                            .onAppear {
                                height += CGFloat(menu.filter { $0 == "\n"}.count) * 10
                            }
                            
                        
                        Spacer()
                    }
                    
                    Spacer(minLength: 0)
                }
                .padding(.top, 12)
                .padding(.leading, 15)
                
            }
        
        
    }
}


