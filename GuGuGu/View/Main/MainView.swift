//
//  ContentView.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 8/17/23.
//

import SwiftUI
import Alamofire




struct MainView: View {
    
    public enum MealTime {
        case breakfast, lunch, dinner
    }
    
    
    @State var date: Date = Date.now
    @State var meal: MealTime = .breakfast
    
    @State var menu: String = "박상민"
    
    @State var menuHeight: CGFloat = 200
    
    @State var mealData: [MealData] = [MealData(menu: "", allergy: "", calorie: "", time: "")]
    
    var body: some View {
        
        GeometryReader { proxy in
            
            VStack(spacing: 25) {
                
                MenuDateView(date: $date, mealData: $mealData, width: proxy.size.width / 2.62)
                
                MenuSwitch(meal: $meal, width: proxy.size.width / 1.31)
                
                ScrollView {
                    VStack(spacing: 22) {
                        
                        ForEach(mealData, id: \.self) { data in
                            if data.time == "breakfast" && meal == .breakfast || data.time == "lunch" && meal == .lunch || data.time == "dinner" && meal == .dinner {
                                
                                MenuCell(menu: data.menu, width: proxy.size.width / 1.09, time: data.time)
                                
                                MenuCalorieCell(calorie: data.calorie, width: proxy.size.width / 1.09, time: data.time)
                                
                                MenuAllergieCell(allergy: data.allergy, width: proxy.size.width / 1.09)
                                
                            }
                            
                            
                            
                        }
                    }
                
                    
                }
                
            }
            .onAppear {
                GetMealData(mealData: $mealData, date: $date).get()
            }
            
            .position(x: proxy.frame(in: .global).width / 2, y: proxy.frame(in: .global).height / 2)
            .offset(y: 30)
            
            
        }
        
    }
    
}

#Preview {
    MainView()
}
