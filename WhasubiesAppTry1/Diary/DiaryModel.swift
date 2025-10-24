//
//  DiaryModel.swift
//  WhasubiesAppTry1
//
//  Created by Aleksandra Stupiec on 23/10/25.
//

import Foundation

struct Diary: Identifiable {
    var id : UUID = UUID()
    var date: String
    var diaryText: String
}
