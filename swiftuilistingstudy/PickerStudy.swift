//
//  PickerStudy.swift
//  swiftuilistingstudy
//
//  Created by kenan on 23.07.2024.
//

import SwiftUI

struct PickerStudy: View {
    @State private var countriesList = [String]()
    @State private var selectedCountry = ""
    var body: some View {
        VStack(spacing:100){
            Picker("Please select country",selection: $selectedCountry){
                ForEach(countriesList,id:\.self){ country in
                    Text(country)
                }
            }
            Text(selectedCountry)
            Button("Show"){
                print("Selected country: \(selectedCountry)")
            }.onAppear{
                countriesList.append("Türkiye")
                countriesList.append("South Korea")
                countriesList.append("Hungary")
            }
        }
    }
}

#Preview {
    PickerStudy()
}
