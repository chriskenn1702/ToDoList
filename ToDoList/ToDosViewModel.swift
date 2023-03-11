//
//  ToDosViewModel.swift
//  ToDoList
//
//  Created by Christopher Kennedy on 3/11/23.
//

import Foundation

class ToDosViewModel: ObservableObject{
    @Published var toDos: [ToDo] = []
    
    init(){
        toDos.append(ToDo(item: "Learn Swift"))
        toDos.append(ToDo(item: "Build Apps"))
        toDos.append(ToDo(item: "Change the world"))
    }
    
    func saveToDo(toDo: ToDo, newToDo: Bool){
        if newToDo{
            toDos.append(toDo)
        } else{
            if let index = toDos.firstIndex(where: {$0.id == toDo.id}){
                toDos[index] = toDo
            }
        }
       
    }
}
