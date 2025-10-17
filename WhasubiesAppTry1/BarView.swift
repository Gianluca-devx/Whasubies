//
//  BarView.swift
//  NavigationWS
//
//  Created by Gianluca Pascarella on 15/10/25.
//

import SwiftUI

struct BarView: View {
    var body: some View {
        TabView() {
            Tab("Home", systemImage: "house") {
                CalendarTry1()
            }
            Tab("Swipe", systemImage: "square.stack.3d.down.right") {
                ContentView()
            }
            Tab("Learn", systemImage: "book") {
                ContentView()
            }
            Tab("Diary", systemImage: "calendar") {
                ContentView()
            }
        }
    }
}

#Preview {
    BarView()
}


