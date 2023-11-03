//
//  OptionView.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 8/18/23.
//

import SwiftUI

struct SettingCell: View {
    
    let text: String
    
    init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10.0)
            .frame(width: 340, height: 50)
            .foregroundColor(Color("GuGuGu-gray"))
            .padding(.vertical, 5)
            .overlay {
                HStack {
                    Text(text)
                        .font(.custom("Pretendard-SemiBold", size: 20))
                        .foregroundColor(Color(.label))
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(.label))
                }
                .padding(.horizontal, 18)
                
        
            }
        
    }
}

#Preview {
    SettingCell("급똥")
}
