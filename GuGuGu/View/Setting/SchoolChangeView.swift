//
//  SchoolChangeView.swift
//  GuGuGu
//
//  Created by dgsw8th16 on 8/18/23.
//

import SwiftUI

struct SchoolChangeView: View {
    @State private var searchText: String = ""
    
    let schools = ["school1", "school2", "school3", "school4"]
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return schools
        } else {
            return schools.filter { $0.contains(searchText) }
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(searchResults, id: \.self) { name in
                    NavigationLink {
                        Text("\(name)")
                    } label: {
                        Text(name)
                    }
                }
            }
        }
        .searchable(text: $searchText, prompt: "학교 검색")
        .textInputAutocapitalization(.never)
        
        .refreshable {
            
        }
    }
    
}

#Preview {
    SchoolChangeView()
}
