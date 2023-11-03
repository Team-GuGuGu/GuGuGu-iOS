//
//  SwiftUIView.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 8/18/23.
//

import SwiftUI

struct LaunchScreenView: View {
    
    @EnvironmentObject var launchScreenManager: LaunchScreenManager
    var body: some View {
        ZStack {
            background
            VStack {
                logo
                    .padding(.bottom, 72)
                    
                    
                Text("밥먹자")
                    .font(.custom("Pretendard-Bold", size: 35))
                Text("구구구")
                    .font(.custom("Pretendard-Bold", size: 50))
                    
            }
        }
        
            }
}

#Preview {
    LaunchScreenView()
}

private extension LaunchScreenView {
    var background: some View {
        Color("LaunchScreen-background")
            .edgesIgnoringSafeArea(.all)
        
    }
    
    var logo: some View {
        Image("LaunchScreen-logo")
            .resizable()
            .frame(width: 128, height: 128)
            .aspectRatio(contentMode: .fill)
            .clipped()
    }
    
}
