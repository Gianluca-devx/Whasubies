//
//  ContentView.swift
//  NavigationWS
//
//  Created by Gianluca Pascarella on 15/10/25.
//

import SwiftUI



struct ContentView: View {
    
    @State var isModalOpened: Bool = false
    @State private var showAnimation: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink ("Navigation Button") {
                    ContentView()
                }
                
                Button ("Open Modal") {
                    isModalOpened.toggle()
                }
                
            }.sheet(isPresented: $isModalOpened) {
                VStack {
                    Toggle(isOn: $showAnimation) {
                        Text("Show Animation")
                    }.padding()
                }
                
                Spacer()
                
                Text("Hello from the modal")
                
            }
        }
    }
}

#Preview {
    ContentView()
}
