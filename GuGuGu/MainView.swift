//
//  ContentView.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 8/17/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 20.0)
                        .frame(width: 150, height: 40, alignment: .center)
                        .foregroundColor(Color("MainGray"))
                        .overlay(
                            Text("2023년 8월 18일")
                                .font(.custom("Pretendard-Medium", size: 15))
                                .lineLimit(1)
                                .multilineTextAlignment(.center)
                            
                        )
                    
                }
                .padding(.top, 48)
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    MainView()
}
