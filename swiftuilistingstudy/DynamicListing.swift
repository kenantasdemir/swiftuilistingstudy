//
//  DynamicListing.swift
//  swiftuilistingstudy
//
//  Created by kenan on 23.07.2024.
//

import SwiftUI

struct DynamicListing: View {
    
    @State private var countriesList = [Country]()
    
    func remove(at offsets:IndexSet){
        let country = countriesList[offsets.first!]
        print("\(country.name!) deleted")
        countriesList.remove(at: offsets.first!)
    }
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(countriesList){ country in
                    NavigationLink(destination: CountryDetailPage(country: country)){
                        CountryItem(country:country).onTapGesture {
                            print("\(country.name!) clicked")
                        }
                    }
                }.onDelete(perform: remove)
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Countries")
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

struct CountryItem:View{
    var country = Country()
    var body:some View{
        
        HStack{
            Text(country.name!)
            Spacer()
            Text("Select")
                .foregroundColor(.red)
                .onTapGesture {
                    print("\(country.name!) selected!")
                }
        }
     
        
    }
}

#Preview {
    DynamicListing()
}
