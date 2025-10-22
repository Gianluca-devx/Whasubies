//
//  Learnview.swift
//  WhasubiesAppTry1
//
//  Created by Aleksandra Stupiec on 20/10/25.
//

import SwiftUI

struct LearnView: View {
    var ListModel = ListViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                List{
                    ForEach(ListModel.articles) { article in
                        Section(){
                               
                                NavigationLink(destination: ListDetailView(article : article)) {
                                    HStack {
                                        Image(systemName: "circle.fill")
                                        Text(article.title)
                                            .font(.headline)
                                    }.navigationTitle("Learning")
                                        .padding()
                                }
                            }
                        }
                    }
                }
            
        }
    }
}
#Preview {
    LearnView()
    
}
