//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Muhammet Eren on 21.07.2023.
//

import SwiftUI

@main
struct ToDoAppApp: App {
    @StateObject var listViewModel:ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
                
            }
            .environmentObject(listViewModel)
        }
    }
}
