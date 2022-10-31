//
//  addTask.swift
//  mc1
//
//  Created by Alessandro Vinaccia on 24/10/22.
//

import SwiftUI

enum Day{
    case today
    case tomorrow
}

struct AddTask: View {
    var taskVM : TaskViewModel
    @Environment(\.dismiss) var dismiss
    @State private var day : Day = .today
    @State private var title = ""
    @State private var notes = ""
    
    var body: some View {
        NavigationView {
            Form{
                Picker("What is your favorite color?", selection: $day) {
                    Text("Today").tag(Day.today)
                    Text("Tomorrow").tag(Day.tomorrow)
                }
                .pickerStyle(.segmented)
                TextField("Task title", text: $title)
                TextField("Notes", text: $notes)
            }.navigationBarItems(leading: Button("Back", action: { dismiss() }), trailing: Button("Add", action : { taskVM.newTask(title: title, day: day, notes: notes)
                dismiss() }))
            .navigationTitle("Add Task")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

