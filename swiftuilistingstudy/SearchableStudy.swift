//
//  SearchableStudy.swift
//  swiftuilistingstudy
//
//  Created by kenan on 23.07.2024.
//

import SwiftUI

struct SearchableStudy: View {
    @State private var wordToBeSearched = ""
    var body: some View {
        NavigationStack{
            VStack{
                
            }.navigationTitle("Search")
                
        }.searchable(text: $wordToBeSearched,prompt: "Search")
            .onChange(of: wordToBeSearched){ res in
                    print("Result is \(res)")
            }
    }
}

#Preview {
    SearchableStudy()
}
