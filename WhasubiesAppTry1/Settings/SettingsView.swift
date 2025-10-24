//
//  SettingsView.swift
//  WhasubiesAppTry1
//
//  Created by Aleksandra Stupiec on 20/10/25.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var swipes: Double = 2
    
    
    var body: some View {
        NavigationView {
            List{
                Section(header: Text("Swipes per day")){
                    Slider(
                        value: $swipes,
                        in: 0...10,
                        step: 2
                    ) {
                        Text("Swipe")
                    } minimumValueLabel: {
                        Text("0")
                    } maximumValueLabel: {
                        Text("10")
                    }
                    
                }
                .font(.subheadline)
                
                Section(header: Text("Notifications")){
                    Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("Type of notifications")) {
                        Text("Banner").tag(1)
                        Text("Push notification").tag(2)
                    }
                    
                    Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("Mode of notifications")) {
                        Text("Text only").tag(1)
                        Text("Text and sound").tag(2)
                        Text("Alert").tag(3)
                    }
                    
                    
                    Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                        Text("Allow push notifications")
                    }
                    
                }
                .font(.subheadline)
                
                Section(header: Text("Reminder notification")){
                    
                    DatePicker(selection: .constant(Date()), label: { Text("Send at") })
                    
                    
                }
                .font(.subheadline)
                
                
            }
            .navigationTitle("User Settings")
            
            
            
            
        }
    }
    
}

//}

#Preview {
    SettingsView()
}
