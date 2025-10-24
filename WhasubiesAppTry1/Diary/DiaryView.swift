//
//  DiaryView.swift
//  WhasubiesAppTry1
//
//  Created by Aleksandra Stupiec on 20/10/25.
//

import SwiftUI

struct DiaryView: View {
    
    var diaryViewModel = DiaryViewModel()
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(diaryViewModel.diaryEntries)
                    {
                        diary in
                        NavigationLink(destination:DiaryDetailView(diary: diary)) {
                            
                            VStack(alignment:.leading) {
                                Section {
                                    Text(diary.date)
                                        .bold()
                                    
                                    Text(diary.diaryText)
                                        .font(.subheadline)
                                        .padding(.top)
                                }
                            }
                        }
                        
                    }
                }
                .navigationTitle("Diary")
                .padding(.bottom)
            }
            
            
        }
    }
}


#Preview {
    DiaryView()
}
