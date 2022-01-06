//
//  TodoItem.swift
//  todo-app
//
//  Created by Ege Çavuşoğlu on 1/1/22.
//

import SwiftUI

struct TodoItem: View {
    var todo: Todo
    var removeFromList: (_ id:Int) -> Void
    
    func removeSelf() {
        removeFromList(self.todo.id)
    }
    
    var body: some View {
        NavigationLink(destination: todo_details(item: todo)) {
            Text(todo.text)
                .padding()
        }
        .swipeActions{
            Button("Delete") {
                removeSelf()
            }
            .tint(.red)
        }
    }
}
