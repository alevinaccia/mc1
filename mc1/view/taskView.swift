//
//  taskView.swift
//  mc1
//
//  Created by Domenico Buonanno on 25/10/22.
//

import SwiftUI

struct taskView: View {
    @Binding var task: Task
    
    var body: some View {
        HStack {
            Image(systemName: task.isCompleted ? "checkmark.circle": "circle")
            
                .onTapGesture {
                    task.isCompleted.toggle()
                }
                .foregroundColor(.blue) // finish onTapGesture
            Text(task.title)
        } // finish HStack
    } // finish Some View
} // finish View

