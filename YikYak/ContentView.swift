//
//  ContentView.swift
//  YikYak
//
//  Created by AlecNipp on 2/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.secondary.opacity(0.3).ignoresSafeArea()
            VStack {
                Text("Mando")
                    .font(.title)
                Image("outer-banks-star")
                    .resizable()
                    .scaledToFit()
                Text("I **love** Outer Banks. Pogues for life.")
                Image(systemName: "heart")
                    .font(.largeTitle)
                    .foregroundStyle(.blue)
            }
        }
    }
}

#Preview {
    ContentView()
}
