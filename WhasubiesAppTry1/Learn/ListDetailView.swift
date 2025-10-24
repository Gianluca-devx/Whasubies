//
//  ListDetailView.swift
//  WhasubiesAppTry1
//
//  Created by shantia azizian on 20/10/25.
//

import SwiftUI

struct ListDetailView: View {
    var article: ListModel

    var body: some View {
        ZStack {
            backgroundGradient
                .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text(article.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                        .padding(.top, 40)

                    Text(article.assetname)
                        .font(.system(size: 21))
                        .lineSpacing(8)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 40)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ListDetailView(article: ListModel(title: "Mood And Carbs", color: .red, assetname: "Mood And Carbs"))
}
