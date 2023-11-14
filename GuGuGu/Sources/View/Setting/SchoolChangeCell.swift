//
//  SchoolChangeCell.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 11/3/23.
//

import SwiftUI

struct SchoolChangeCell: View {
    
    let text: String
    
    init(text: String) {
        self.text = text
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .strokeBorder(Color.black.opacity(0.3), lineWidth: 1)
            .frame(width: 350, height: 60)
            .background(Color("D9").clipShape(RoundedRectangle(cornerRadius: 9)))
            .overlay {
                Text("\(text)")
                    .font(.custom("Pretendard-Bold", size: 16))
            }
    }
}

#Preview {
    SchoolChangeCell(text: "대구소프트웨어마이스터고등학교")
}
