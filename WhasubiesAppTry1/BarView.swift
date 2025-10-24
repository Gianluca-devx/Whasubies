//
//  BarView.swift
//  NavigationWS
//
//  Created by Gianluca Pascarella on 15/10/25.
// khkhkjhk

import SwiftUI

struct BarView: View {
    
    @State private var showAnimation: Bool = false
    
    var body: some View {
        TabView() {
            Tab("Home", systemImage: "house") {
                CalendarTryView()
            }
            Tab("Swipe", systemImage: "square.stack.3d.down.right",) {
                SwipeView()
            }
            Tab("Learn", systemImage: "book") {
                LearnView()
            }
            Tab("Diary", systemImage: "calendar") {
                ContentView()
            }
                Tab("Settings", systemImage: "gear") {
                    ContentView()
            }
        }
    }
}

#Preview {
    BarView()
}

//.symbolEffect(.rotate.wholeSymbol, options: .nonRepeating)
