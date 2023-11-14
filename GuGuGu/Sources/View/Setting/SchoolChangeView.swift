//
//  SchoolChangeView.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 8/18/23.
//

import SwiftUI

struct DateModel: Codable {
    let data: [SchoolModel]
}

struct SchoolModel: Codable, Hashable {
    let schoolCode: String
    let schoolName: String
    let local: String
}

struct SchoolChangeView: View {
    @State var search: String = ""
    @State var schoolModel: [SchoolModel]?
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    TextField("학교 이름을 입력하세요", text: $search)
                    
                    Rectangle()
                        .frame(height: 1)
                    
                }
                
                Button {
                    
                } label: {
                    Text("검색")
                }
            }
            .padding(.horizontal, 20)
            
            ScrollView {
                Spacer(minLength: 30)
                
                VStack(spacing: 30) {
                    ForEach(1..<10) { _ in
                        SchoolChangeCell(text: "대구소프트웨어마이스터고등학교")
                    }
                    
                    
                }
                
            }
        }
        
        
    }
    
}

#Preview {
    SchoolChangeView()
}
