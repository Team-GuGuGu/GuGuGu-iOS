//
//  MenuSwitch.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 9/8/23.
//

import SwiftUI

struct MenuSwitch: View {
    
    @State var positionX: CGFloat = -100
    
    var body: some View {
        RoundedRectangle(cornerRadius: 100)
            .switchShadow()
            .foregroundStyle(.white)
            .frame(width: 300, height: 40)
            .background(
                RoundedRectangle(cornerRadius: 100)
                    .stroke(.black, lineWidth: 1)
            )
            .overlay {
                ZStack {
                    HStack(spacing: 0) {
                        Color.white
                            .frame(width: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .overlay {
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(.black, lineWidth: 1)
                            }
                            .animation(Animation.default.speed(1), value: positionX)
                            .offset(x: positionX)
                            
                    }
                    HStack(spacing: 0) {
                        
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 100)
                            .opacity(0)
                            .overlay {Image("Menu-breakfast")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(5)
                                    }
                            .onTapGesture {
                                positionX = -100
                            }
                        
                        
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 100)
                            .opacity(0)
                            .overlay {
                                Image("Menu-lunch")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(5)
                            }
                            .onTapGesture {
                                positionX = 0
                            }
                        
                        
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 100)
                            .opacity(0)
                            .overlay{
                                Image("Menu-dinner")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(5)
                            }
                            .onTapGesture {
                                positionX = 100
                            }
                        
                    }
                }
            }
        
        
        
    }
}

#Preview {
    MenuSwitch()
}

