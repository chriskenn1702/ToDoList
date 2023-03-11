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
        toDos.append(ToDo(id: UUID().uuidString, item: "Learn Swift"))
        toDos.append(ToDo(id: UUID().uuidString, item: "Build Apps"))
        toDos.append(ToDo(id: UUID().uuidString, item: "Change the world"))
    }
    
    func saveToDo(toDo: ToDo){
        if toDo.id == nil{
            var newToDo = toDo
            newToDo.id = UUID().uuidString
            toDos.append(newToDo)
        } else{
            if let index = toDos.firstIndex(where: {$0.id == toDo.id}){
                toDos[index] = toDo
            }
        }
       
    }
    
    
    func deleteToDo(indexSet: IndexSet){
        toDos.remove(atOffsets: indexSet)
    }
    
    func moveToDo(fromOffsets: IndexSet, toOffset: Int){
        toDos.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
}
