//
//  SwiftUIView.swift
//  mc1
//
//  Created by Domenico Buonanno on 25/10/22.
//

import SwiftUI

struct Taskss: Identifiable {
    let id = UUID()
    let name: String
    var isCompleted: Bool
}

struct ContentView: View {
    
    @State private var tasks = [Task(name: "Feed the dog", isCompleted: false), Task(name: "Take trash out", isCompleted: false)]
    
    var body: some View {
        VStack {
            List($tasks) { $task in
                TaskCellView(task: $task)
            }
            
            Text("Completed tasks count: \(tasks.filter { $0.isCompleted }.count)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TaskCellView: View {
    
    @Binding var task: Task
    
    var body: some View {
        HStack {
            Image(systemName: task.isCompleted ? "checkmark.circle": "circle")
                .onTapGesture {
                    task.isCompleted.toggle()
                }
            Text(task.name)
        }
    }
}
