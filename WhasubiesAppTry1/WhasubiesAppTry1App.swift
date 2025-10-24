//
//  WhasubiesAppTry1App.swift
//  WhasubiesAppTry1
//
//  Created by Gianluca Pascarella on 17/10/25.
//

import SwiftUI

let backgroundGradient = LinearGradient(colors: [.green.opacity(0.6), .pink.opacity(0.2)], startPoint: .top, endPoint: .bottom)

@main
struct WhasubiesAppTry1App: App {
    var body: some Scene {
        WindowGroup {
            BarView()
        }
    }
}
