//
//  MenuSwitch.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 9/8/23.
//

import SwiftUI

struct MenuSwitch: View {
    
    @Binding var meal: MainView.MealTime
    
    let width: CGFloat
    
    init(meal: Binding<MainView.MealTime>, width: CGFloat) {
        self._meal = meal
        self.width = width
    }
    
    func mealPos(meal: MainView.MealTime) -> CGFloat {
        
        if meal == .breakfast {
            return 0
        }
        if meal == .lunch {
            return width / 3
        }
        if meal == .dinner {
            return width / 3 * 2
        }
        
        return 0
        
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 100)
            .switchShadow()
            .foregroundStyle(.white)
            .frame(width: width, height: 40)
           
        
            .overlay {
                ZStack {
                    RoundedRectangle(cornerRadius: 99)
                        .strokeBorder(.black, lineWidth: 1)
                    
                    GeometryReader { geometry in
                        HStack(spacing: 0) {
                            
                            Color.white
                                .frame(width: width / 3)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .overlay {
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(.black, lineWidth: 1)
                                }
                                .offset(x: mealPos(meal: meal))
                            
                            
                        }
                        
                        HStack(spacing: 0) {
                            
                            Rectangle()
                                .frame(width: width / 3)
                                .opacity(0)
                                .overlay {
                                    Image("Menu-breakfast")
                                        .resizable()
                                        .scaledToFit()
                                        .padding(5)
                                }
                                .onTapGesture {
                                    withAnimation {
                                        meal = .breakfast
                                    }
                                }
                            
                            
                            Rectangle()
                                .frame(width: width / 3)
                                .opacity(0)
                                .overlay {
                                    Image("Menu-lunch")
                                        .resizable()
                                        .scaledToFit()
                                        .padding(5)
                                }
                                .onTapGesture {
                                    withAnimation {
                                        meal = .lunch
                                    }
                                }
                            
                            
                            Rectangle()
                                .frame(width: width / 3)
                                .opacity(0)
                                .overlay {
                                    Image("Menu-dinner")
                                        .resizable()
                                        .scaledToFit()
                                        .padding(5)
                                }
                                .onTapGesture {
                                    withAnimation {
                                        meal = .dinner
                                    }
                                }
                            
                        }
                    }
                }
            }
        
        
        
    }
}


