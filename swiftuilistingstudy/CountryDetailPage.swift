//
//  CountryDetailPage.swift
//  swiftuilistingstudy
//
//  Created by kenan on 23.07.2024.
//

import SwiftUI

struct CountryDetailPage: View {
    var country = Country()
    var body: some View {
        Text(country.name!).font(.system(size: 50))
    }
}

#Preview {
    CountryDetailPage()
}
