//
//  ListDetailView.swift
//  WhasubiesAppTry1
//
//  Created by shantia azizian on 20/10/25.
//

import SwiftUI

struct ListDetailView: View {
    var article : ListModel
    
    var body: some View {
        
        Text(article.title)
            .font(.title)
            .bold()
        
    }
}
#Preview {
    ListDetailView(article:    ListModel(title: "eat shit", color: .red))
}
