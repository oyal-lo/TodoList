//
//  NewToDoView.swift
//  TodoList
//
//  Created by Olive Luong on 7/28/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack {
            Text ("Task title:")
                .fontWeight(.bold)
                .foregroundColor(Color.pink)
                .font(.system(size:25))
            TextField("Enter the task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(20)
                .padding()
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?")
                    .font(.system(size:15))
                    .foregroundColor(Color.pink)
                Button {
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
}

#Preview {
    NewToDoView()
}
