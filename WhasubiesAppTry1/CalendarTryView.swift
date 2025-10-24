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
    @State private var currentDate = Date.now
    @State private var hour = Date.now
    
    
    var body: some View {
        
        
        ZStack {
            backgroundGradient
                .ignoresSafeArea(edges: .all)
            
            VStack {
                
                Spacer()
                
                Text("Hello Mobina")
                    .font(Font.largeTitle.bold())
                    .padding(.leading)
                
                Text(hour, style: .time)
                    .font(Font.largeTitle)
                
                Spacer(minLength: 60)
                
                DatePicker(
                    "Start Date",
                    selection: $date,
                    displayedComponents: [.date])
                .datePickerStyle(.graphical)
                .onChange(of: date) { oldDate, newDate in
                    let calendar = Calendar.current
                    let oldDay = calendar.component(.day, from: oldDate)
                    let newDay = calendar.component(.day, from: newDate)
                    guard oldDay != newDay else { return }
                    isSheetPresented = true
                    
                }
                
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
                
                Spacer()
                
                Text("Your streak is: 4🔥")
                    .font(.system(size: 25))
                    .padding()
                    .glassEffect()
                    .padding(.bottom) // 👈 float above tab bar
            }
        }//EndSheet and VStack
    }
}




#Preview {
    CalendarTryView()
}

