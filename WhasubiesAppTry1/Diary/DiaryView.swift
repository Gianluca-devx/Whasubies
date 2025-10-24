//
//  DiaryView.swift
//  WhasubiesAppTry1
//
//  Created by Aleksandra Stupiec on 20/10/25.
//

import SwiftUI

struct DiaryView: View {
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(diaryEntries) {
                        Section {
                            Text(diaryEntries.diaryText)
                        }
                        Section {
                            Text("")
                        }
                        Section {
                            Text("")
                        }
                        Section {
                            Text("")
                        }
                        Section {
                            Text("")
                        }
                    }
                }
            }
            
        }
    }
}


#Preview {
    DiaryView()
}
