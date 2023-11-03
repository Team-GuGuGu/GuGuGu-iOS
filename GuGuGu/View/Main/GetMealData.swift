//
//  GetMealData.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 11/3/23.
//

import SwiftUI
import Alamofire

struct DataModel: Codable {
    let data: [MealData]
}

struct MealData: Codable, Hashable {
    let menu: String
    let allergy: String
    let calorie: String
    let time: String
}


struct GetMealData {
    
    @Binding var mealData: [MealData]
    @Binding var date: Date
    
    
    
    init(mealData: Binding<[MealData]>, date: Binding<Date>) {
        self._mealData = mealData
        self._date = date
    }
    
    
    func get() {
        
        let url = "https://oracle.devbot.me:8000/api/meal/get"
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "yyyyMMdd"
        
        let params: Parameters = ["local": "D10", "date": dateFormatter.string(from: date), "schoolCode": "7240454"]
        
        let header: HTTPHeaders = ["Accept": "application/json;charset=UTF-8"]
        
        AF.request(url,
                   method: .get,
                   parameters: params,
                   encoding: URLEncoding().self,
                   headers: header
        )
        .responseDecodable(of: DataModel.self) { response in
            switch response.result {
            case .success(let data):
                mealData = data.data
                
                
            case .failure(let error):
                print(error)
            }
            
        }
    }
    
    
    
}

public func transTime(time: String) -> String {
    if time == "breakfast" {
        return "아침"
    }
    else if time == "lunch" {
        return "점심"
    }
    else if time == "dinner" {
        return "저녁"
    }
    else {
        return "예외"
    }
}

