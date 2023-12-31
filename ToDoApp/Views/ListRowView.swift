//
//  ListRowView.swift
//  ToDoApp
//
//  Created by Muhammet Eren on 21.07.2023.
//

import SwiftUI

struct ListRowView: View {
    let item:ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
            
        }.font(.title3)
            .padding(.vertical,8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(title: "First item", isComplated: false)
    static var item2 = ItemModel(title: "Second item", isComplated: true )
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
