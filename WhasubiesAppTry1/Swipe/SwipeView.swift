//
//  SwipeView.swift
//  WhasubiesAppTry1
//
//  Created by Aleksandra Stupiec on 20/10/25.
//

import SwiftUI
struct SwipeView: View {
    
    let backgroundGradient = LinearGradient(
        colors: [Color.green.opacity(0.6), Color.pink.opacity(0.2)],
        startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        ZStack {
            backgroundGradient
                .ignoresSafeArea(edges: .all)
            Text("Hello, Swipe!")
        }
    }
}
#Preview {
    SwipeView()
}
