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
                        Section {
                            NavigationLink(destination:DiaryDetailView(diary: diary)) {
                                
                                VStack(alignment:.leading) {
                                    
                                    Text(diary.date)
                                        .bold()
                                    
                                    Divider()
                                    
                                    Text(diary.diaryText)
                                        .font(.subheadline)
                                        .padding(.top)
                                }
                            }
                        }
                        
                    }
                }
                .navigationTitle("Diary")
            }
            
            
        }
    }
}


#Preview {
    DiaryView()
}
