//
//  ContentView.swift
//  TodoList
//
//  Created by Olive Luong on 7/28/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    var body: some View {
        VStack {
            HStack {
                Text ("To-Do List")
                    .font(.system(size:40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
                    Spacer()
                Button {
                    withAnimation {
                        showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.system(size:40))
                        .fontWeight(.bold)
                        .foregroundColor(Color.pink)
                }
            }
            .padding()
            Spacer()
            List {
                ForEach(toDos) { toDoItem in
                    Text(toDoItem.title)
                
                }
            }
        }
        if showNewTask {
            NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false))
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: ToDoItem.self, inMemory: true)
}
