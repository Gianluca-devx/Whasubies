//
//  SettingsView.swift
//  WhasubiesAppTry1
//
//  Created by Aleksandra Stupiec on 20/10/25.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var celsius: Double = 0
    
    var body: some View {
        //        VStack {
        //            HStack {
        //                Text("User settings")
        //                    .font(.title)
        //                    .bold()
        //                    .padding()
        //                Spacer()
        //                Image(systemName: "bell")
        //                    .padding()
        //
        //            }
        NavigationView {
            List{
                Section(header: Text("Idk")){
                    Slider(value: $celsius, in: 0...10)
                    
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
                    Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                        Text("Send at specific time")
                    }
                    
                }
                
            }
            .navigationTitle("User Settings")
            
            
            
            
        }
    }
    
}

//}

#Preview {
    SettingsView()
}
