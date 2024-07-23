//
//  DynamicGridListing.swift
//  swiftuilistingstudy
//
//  Created by kenan on 23.07.2024.
//

import SwiftUI

struct DynamicGridListing: View {
    
    @State private var countriesList = [Country]()
   
    var body: some View {
        NavigationStack{
            GeometryReader{ geometry in
                let screenWidth = geometry.size.width
                let itemWidth = (screenWidth-40)/2
                ScrollView{
                    LazyVGrid(columns:
                                [GridItem(.flexible()),
                                 GridItem(.flexible())
                                ],spacing: 20
                    ){
                        ForEach(countriesList){ country in
                            
                            NavigationLink(destination:DynamicListingGridItemDetailPage(country: country)){
                                CountryGridItem(country: country, width: itemWidth, height: itemWidth).onTapGesture {
                                    print("\(country.name!)")
                                }
                            }
                            
                         
                        }
                    }
                }.padding(10)
                    .navigationTitle("Countries")
            }
        }.onAppear(){
            var list = [Country]()
            let u1 = Country(name:"Türkiye")
            let u2 = Country(name:"Germany")
            let u3 = Country(name:"South Korea")
            let u4 = Country(name:"Italy")
            list.append(u1)
            list.append(u2)
            list.append(u3)
            list.append(u4)
            
            countriesList = list
            
        }
    }
}

struct CountryGridItem:View {
    var country = Country()
    var width = 0.0
    var height = 0.0
    var body: some View {
        VStack{
            Text(country.name!)
            Text("Select").foregroundColor(.red)
                .onTapGesture {
                    print("Text: \(country.name!) selected")
                }
        }.frame(width:width,height: height)
            .border(.gray)
    }
}


#Preview {
    DynamicGridListing()
}
