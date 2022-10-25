//
//  TaskViewModel.swift
//  mc1
//
//  Created by Alessandro Vinaccia on 24/10/22.
//

import SwiftUI

class TaskViewModel: ObservableObject {

    @Published var tasks : [Task] = [Task(id: UUID(), title: "ddd", day: .today, notes: "ddd", isCompleted: false)]
    
    func newTask(title : String, day : Day, notes : String) {
        let ntask : Task = Task(id: UUID(), title: title, day: day, notes: notes, isCompleted: false)
        tasks.append(ntask)
    }

    func remove(at offsets: IndexSet){
        tasks.remove(atOffsets: offsets)
    }
}
