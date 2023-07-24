//
//  ItemModel.swift
//  ToDoApp
//
//  Created by Muhammet Eren on 21.07.2023.
//

import Foundation
import SwiftUI

struct ItemModel:Identifiable, Codable {
    let id: String
    var title:String
    var isCompleted: Bool
    
    init(id:String = UUID().uuidString,title:String,isComplated:Bool){
        self.id = id
        self.title = title
        self.isCompleted = isComplated
    }
    func updateCompletion() -> ItemModel{
        return ItemModel(id: id ,title: title, isComplated: !isCompleted)
    }
    
    
}
