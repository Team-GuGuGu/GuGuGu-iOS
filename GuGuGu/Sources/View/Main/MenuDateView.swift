//
//  MenuDateView.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 9/8/23.
//

import SwiftUI

struct MenuDateView: View {
    
    @Binding var date: Date
    @Binding var mealData: [MealData]
    
    let dateFormatter = DateFormatter()
    
    let width: CGFloat
    
    init(date: Binding<Date>, mealData: Binding<[MealData]>, width: CGFloat) {
        self._date = date
        self._mealData = mealData
        dateFormatter.dateFormat = "yyyy년 MM월 dd일"
        self.width = width
    }
    
    func changeDate(value: Int) {
        
        date = Calendar.current.date(byAdding: .day, value: value, to: date) ?? date
        GetMealData(mealData: $mealData, date: $date).get()
        
    }
    
    var body: some View {
        HStack(spacing: 19) {
            Button {
                changeDate(value: -1)
            } label: {
                
                Image(systemName: "chevron.left")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 26)
                    .foregroundStyle(Color.black)
                    
            }
            
            Button { 
                date = Date.now
                GetMealData(mealData: $mealData, date: $date).get()
            } label: {
                RoundedRectangle(cornerRadius: 20.0)
                    .strokeBorder(.black, lineWidth: 1)
                    .foregroundStyle(Color.white)
                    .frame(width: width, height: 40, alignment: .center)
                    .overlay(
                        Text(dateFormatter.string(from: date))
                            .font(.custom("Pretendard-Medium", size: 15))
                            .foregroundStyle(Color.black)
                    )
            }
            
            Button {
                changeDate(value: 1)
            } label: {
                Image(systemName: "chevron.right")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 26)
                    .foregroundStyle(Color.black)
                   
            }
        }
        
    }
    
}


