//
//  NewToDoView.swift
//  TodoList
//
//  Created by Olive Luong on 7/28/25.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    var body: some View {
        VStack {
            Text ("Task title:")
                .fontWeight(.bold)
                .foregroundColor(Color.pink)
                .font(.system(size:25))
            TextField("Enter the task description...", text: $toDoItem.title, axis: .vertical)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(20)
                .padding()
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
                    .font(.system(size:15))
                    .foregroundColor(Color.pink)
                Button {
                    addToDo()
                } label: {
                    Text ("Save     ")
                        .foregroundColor(Color.white)
                        .background(Color.pink)
                        .cornerRadius(25)
                }
            }
            
        }
        .padding()
    }
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    }
}

#Preview {
    NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false))
}
