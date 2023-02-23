//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Christopher Kennedy on 2/23/23.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink {
                    DetailView()
                } label: {
                    Image(systemName: "eye")
                    Text("Show the New View")
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView()
    }
}


