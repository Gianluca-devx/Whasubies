//
//  DiaryView.swift
//  WhasubiesAppTry1
//
//  Created by Aleksandra Stupiec on 20/10/25.
//

import SwiftUI



struct DiaryView: View {
    
    let backgroundGradient = LinearGradient(colors: [.green.opacity(0.6), .pink.opacity(0.2)], startPoint: .top, endPoint: .bottom)

    
    var diaryViewModel = DiaryViewModel()
    
    var body: some View {
        
            
                NavigationStack {
                    ZStack {
                        backgroundGradient
                            .ignoresSafeArea(edges: .all)
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
                    .scrollContentBackground(.hidden)
                    .navigationTitle("Diary")
                }
                
                
            }
        }
    }



#Preview {
    DiaryView()
}
