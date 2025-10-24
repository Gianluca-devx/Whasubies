//
//  DiaryDetailView.swift
//  WhasubiesAppTry1
//
//  Created by Aleksandra Stupiec on 23/10/25.
//

import SwiftUI

struct DiaryDetailView: View {
    
    
    
    var diary: DiaryModel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(diary.date)
                .font(.headline)
                .padding()
            Text(diary.diaryText)
                .padding()
            
        }
    }
}

#Preview {
    DiaryDetailView(diary: DiaryModel(date: "24/20/2025", diaryText: "Just another day eating chocolate for better sleep. v Just another day eating chocolate for better sleep. Just another day eating chocolate for better sleep.Just another day eating chocolate for better sleep. Just another day eating chocolate for better sleep.Just another day eating chocolate for better sleep.Just another day eating chocolate for better sleep.Just another day eating chocolate for better sleep." ))
}
