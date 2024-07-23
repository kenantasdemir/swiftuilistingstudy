//
//  ContentView.swift
//  swiftuilistingstudy
//
//  Created by kenan on 23.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var time = Date()
    @State private var date = Date()
    @State private var selectedTime = ""
    @State private var selectedDate = ""
    
    var body: some View {
        VStack(spacing:100) {
            DatePicker("Time",selection: $time,displayedComponents: [.hourAndMinute]).padding()
            DatePicker("Date",selection: $date,displayedComponents: [.date]).padding()
            
            Text(selectedTime)
            Text(selectedDate)
            
            Button("Show"){
                let tf = DateFormatter()
                tf.dateFormat = "HH:mm"
                selectedTime = tf.string(from: time)
            
                
                let df = DateFormatter()
                df.dateFormat = "MM/dd/yyyy"
                selectedDate = df.string(from: date)
                
            }
            
            
        }
        
        
        
    }
}

#Preview {
    ContentView()
}
