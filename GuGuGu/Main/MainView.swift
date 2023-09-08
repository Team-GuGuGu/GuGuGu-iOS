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
            VStack(spacing: 0) {
                MenuDateView()
                    .padding(.top, 48)
                
                MenuSwitch()
                    .padding(.top, 22)
                
                MenuCell()
                    .padding(.top, 52)
                
                MenuCalorieCell()
                    .padding(.top, 25)
                
                MenuAllergieCell()
                    .padding(.top, 25)
                
                Spacer()
            }
            
        }
    }
}

#Preview {
    MainView()
}
