//
//  DynamicListingGridItemDetailPage.swift
//  swiftuilistingstudy
//
//  Created by kenan on 23.07.2024.
//

import SwiftUI

struct DynamicListingGridItemDetailPage: View {
    var country = Country()
    var body: some View {
        Text("\(country.name!) Detail Page")
    }
}

#Preview {
    DynamicListingGridItemDetailPage()
}
