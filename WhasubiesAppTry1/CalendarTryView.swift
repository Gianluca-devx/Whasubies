//
//  CalendarTry1.swift
//  NavigationWS
//
//  Created by Gianluca Pascarella on 16/10/25.
//

import SwiftUI

//how to put moving image in the Tab bar?

//Instead of VStack + HStack for the sheet used NavigationStack

struct CalendarTryView: View {
    
    @State private var date = Date()
    @State private var isSheetPresented = false
    @State private var userInput = "" // text the user types
    @State private var great = "Hello"
    
    var body: some View {
        
        NavigationStack {
            VStack {
                DatePicker(
                    "Start Date",
                    selection: $date,
                    displayedComponents: [.date])
                
                .onChange(of: date) { oldDate, newDate in
                    let calendar = Calendar.current
                    let oldDay = calendar.component(.day, from: oldDate)
                    let newDay = calendar.component(.day, from: newDate)
                    guard oldDay != newDay else { return }
                    isSheetPresented = true
                }
                    
                NavigationLink("Hello") {
                    ContentView()
                }
                
                //Button("Insert your text here") {}
                                                    
                //StartSheet
                .sheet(isPresented: $isSheetPresented) {
                    
                    NavigationStack {
                        TextEditor(text: $userInput)
                            .navigationTitle("\(date, style: .date)")
                            .navigationBarTitleDisplayMode(.inline)
                            .toolbar {
                                Button("Done") {
                                    isSheetPresented = false
                                }
                                .foregroundStyle(.red)
                            }
                    }
                }
            } //EndSheet
            
        }
        .datePickerStyle(.graphical)
    }
    
}


#Preview {
    CalendarTryView()
}

