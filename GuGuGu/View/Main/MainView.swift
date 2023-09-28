//
//  ContentView.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 8/17/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .center, spacing: 0) {
                MenuDateView()
                    .padding(.top, 22)
                    .padding(.vertical, 0)
                
                MenuSwitch()
                    .padding(.top, 22)
                
                ScrollView {
                    MenuCell()
                    
                    MenuCalorieCell()
                        .padding(.top, 25)
                    
                    
                    MenuAllergieCell()
                        .padding(.top, 25)
                    
                }
                
                .padding(.top, 52)
                
            }
        }
        
    }
    
}

#Preview {
    MainView()
}