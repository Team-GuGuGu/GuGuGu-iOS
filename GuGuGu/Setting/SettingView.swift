//
//  OptionView.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 8/18/23.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: SchoolChangeView()) {
                    SettingCell(SettingCellText: "학교 변경")
                }
                NavigationLink(destination: PrivacyPolicyView()) {
                    SettingCell(SettingCellText: "개인정보 처리방침")
                }
                NavigationLink(destination: TermsView()) {
                    SettingCell(SettingCellText: "이용 약관")
                }
                NavigationLink(destination: MakersView()) {
                    SettingCell(SettingCellText: "만든 사람들")
                }
                    
                Spacer()
            }
            .padding(.top, 28)
            
        }
    }
}

#Preview {
    SettingView()
}
