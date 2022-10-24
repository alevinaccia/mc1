//
//  TaskViewModel.swift
//  mc1
//
//  Created by Alessandro Vinaccia on 24/10/22.
//

import SwiftUI

class TaskViewModel: ObservableObject {

    @Published var tasks : [Task] = []
    
    func newTask(title : String, day : Day, notes : String) {
        let ntask : Task = Task(id: UUID(), title: title, day: day, notes: notes)
        tasks.append(ntask)
    }

    func remove(at offsets: IndexSet){
        tasks.remove(atOffsets: offsets)
    }
}
