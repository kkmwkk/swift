//
//  Memo.swift
//  SwiftUImemo
//
//  Created by 전민우 on 2022/08/08.
//

import Foundation
import SwiftUI

class Memo : Identifiable, ObservableObject{
    let id : UUID
    @Published var content : String
    let insertDate : Date
    
    init(content: String, insertDate: Date = Date.now){
        id = UUID()
        self.content = content
        self.insertDate = insertDate
    }
}
