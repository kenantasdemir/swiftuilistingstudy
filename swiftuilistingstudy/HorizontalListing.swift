//
//  HorizontalListing.swift
//  swiftuilistingstudy
//
//  Created by kenan on 23.07.2024.
//

import SwiftUI

struct HorizontalListing: View {
    var body: some View {
        ScrollView(.horizontal){
            LazyHStack{
                CustomGridItem(name: "Sun", imageName:"sun.min").onTapGesture {
                    print("Sun selected")
                }
                
                CustomGridItem(name: "Moon", imageName:"moon.fill").onTapGesture {
                    print("Moon selected")
                }
                
                CustomGridItem(name: "Star", imageName:"star.fill").onTapGesture {
                    print("Star selected")
                }
                
                CustomGridItem(name: "Earth", imageName:"globe").onTapGesture {
                    print("Earth selected")
                }
                
                CustomGridItem(name: "Plane", imageName:"paperplane").onTapGesture {
                    print("Paperplane selected")
                }
                
                CustomGridItem(name: "Airplane departure", imageName:"airplane.departure").onTapGesture {
                    print("Airplane departure selected")
                }
                
                CustomGridItem(name: "Airplane arrival", imageName:"airplane.arrival").onTapGesture {
                    print("Airplane arrival selected")
                }
                CustomGridItem(name: "Figure walk", imageName:"figure.walk").onTapGesture {
                    print("Figure walk selected")
                }
            }
        }
    }
}

struct CustomHorizontalGridItem:View {
    var name:String
    var imageName:String
    var body: some View {
        VStack{
            Image(systemName: imageName)
            Text(name)
        }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,height: 100)
            .border(.gray)
    }
}
#Preview {
    HorizontalListing()
}
