//
//  CalendarTry1.swift
//  NavigationWS
//
//  Created by Gianluca Pascarella on 16/10/25.
//

import SwiftUI


struct CalendarTry1: View {
    
    @State private var date = Date()
    @State private var isSheetPresented = false
    
    var body: some View {
        
        ZStack {
            backgroundGradient
                .ignoresSafeArea(edges: .all)
            
            DatePicker(
                "Start Date",
                selection: $date,
                displayedComponents: [.date]
                
            )
            .onChange(of: date) { oldDate, newDate in
                let calendar = Calendar.current
                let oldDay = calendar.component(.day, from: oldDate)
                let newDay = calendar.component(.day, from: newDate)
                guard oldDay != newDay else { return }
                isSheetPresented = true
            }
            //            .onTapGesture {
            //                isSheetPresented = true
            //            }
            .sheet(isPresented: $isSheetPresented) {
                VStack{
                    HStack{
                        Button {
                            isSheetPresented = false
                        } label: {
                            Image(systemName: "xmark")
                        }
                        .buttonBorderShape(.circle)
                        .buttonStyle(.glass)
                        .controlSize(.large)
                        
                        Spacer()
                    }
                    
                    .padding()
                    
                    Spacer()
                    
                        .presentationDetents([.medium, .large])
                }
                .padding()
            }.navigationTitle("ale")
                .datePickerStyle(.graphical)
            
            
        }
            //.onChange(of: date) { _, _ in
                // Present the sheet whenever a date is selected/changed
                //isSheetPresented = true
            }
            
        }
    
    //full screnn modal

#Preview {
    CalendarTry1()
}

