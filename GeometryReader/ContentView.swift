//
//  ContentView.swift
//  GeometryReader
//
//  Created by Didier Delhaisse on 13/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Width: \(geometry.size.width)")
                Text("Height: \(geometry.size.height)")
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 300, alignment: .trailing)
            .background(.blue)
            //.position(x: geometry.size.width / 2, y: geometry.size.height / 2)
        }
        .background(.red)
    }
}

#Preview {
    ContentView()
}
