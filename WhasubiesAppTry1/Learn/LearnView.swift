//
//  Learnview.swift
//  WhasubiesAppTry1
//
//  Created by Aleksandra Stupiec on 20/10/25.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color.green.opacity(0.6), Color.pink.opacity(0.1)],
    startPoint: .top, endPoint: .bottom)



struct LearnView: View {
    var ListModel = ListViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack{
                backgroundGradient
                    .ignoresSafeArea()
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
                    }.scrollContentBackground(.hidden)
                    .background(Color.clear)
                }
            }
        }
    }
}
#Preview {
    LearnView()
    
}
