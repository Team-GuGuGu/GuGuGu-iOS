//
//  MenuSwitch.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 9/8/23.
//

import SwiftUI

struct MenuSwitch: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 100)
                .foregroundStyle(.white)
                .frame(width: 300, height: 40)
                .overlay {
                    ZStack {
                        RoundedRectangle(cornerRadius: 100)
                            .stroke(.black, lineWidth: 1)
                            .shadow(color: Color.black, radius: 5, x: 5, y: 5)
                            .clipShape(RoundedRectangle(cornerRadius: 100))
                            .shadow(color: Color.white, radius: 2, x: -2, y: -2)
                            .clipShape(RoundedRectangle(cornerRadius: 100))
                        
                        HStack {
                            Color.white
                                .frame(width: 100, height: 40)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .overlay {
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(.black, lineWidth: 1)
                                }
                            
                            Spacer()
                        }
                            
                        HStack {
                            
                            Image("Menu-breakfast")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 30, height: 30)
                            
                            
                            
                            Spacer()
                            
                            Image("Menu-lunch")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 30, height: 30)
                            
                            Spacer()
                            
                            Image("Menu-dinner")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 30, height: 30)
                            
                            
                        }
                        
                        .padding(.horizontal, 35)
                        
                    }
                    
                }
            
            
        }
        
    }
}

#Preview {
    MenuSwitch()
}
