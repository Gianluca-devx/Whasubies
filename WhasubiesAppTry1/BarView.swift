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
                SwipeView()
            }
            Tab("Learn", systemImage: "book") {
                LearnView()
            }
            Tab("Diary", systemImage: "calendar") {
                DiaryView()
            }
            Tab("Setting", systemImage: "gear") {
                SettingsView()
            }
        }
    }
}

#Preview {
    BarView()
}


