//
//  ContentView.swift
//  TodoList
//
//  Created by Olive Luong on 7/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text ("To-Do List")
                    .font(.system(size:40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
                    Spacer()
                Button {
                } label: {
                    Text("+")
                        .font(.system(size:40))
                        .fontWeight(.bold)
                        .foregroundColor(Color.pink)
                }
            }
            .padding()
            Spacer()
        }
        
    }
}

#Preview {
    ContentView()
}
