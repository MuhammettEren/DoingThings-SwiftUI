//
//  CircularProgressView.swift
//  ToDoApp
//
//  Created by Muhammet Eren on 24.07.2023.
//

import SwiftUI

struct CircularProgressView: View {
    let progress: Double
    var body: some View {
        ZStack{
            Circle()
                .stroke(
                    Color.purple.opacity(0.5),
                    lineWidth: 20
                )
            Circle()
                .trim(from: 0.0,to: progress)
                .stroke(
                    Color.purple,
                    style: StrokeStyle(
                        lineWidth: 20,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
                .animation(.easeInOut, value: progress)
            
            VStack {
                            Text("\(Int(progress * 100))%")
                                .font(.headline)
                                .foregroundColor(.indigo)
                            Text("Completed")
                                .font(.subheadline)
                                .foregroundColor(.indigo)
                        }
        }
    }
}


struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView(progress: 0.5)
    }
}
