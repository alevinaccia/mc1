//
//  taskView.swift
//  mc1
//
//  Created by Domenico Buonanno on 25/10/22.
//

import SwiftUI

struct taskView: View {
    let taskRevenue : Int = 100
    let expRevenue : Int = 50
    @Binding var task: Task
    let userVM : UserViewModel
    @State var checked : Bool = false
    
    var body: some View {
        HStack {
            Image(systemName: task.isCompleted ? "checkmark.circle": "circle")
                .onTapGesture {
                    if !checked {
                        userVM.user.money += taskRevenue
                        userVM.user.exp += expRevenue
                        task.isCompleted.toggle()
                        checked = true;
                    }
                }
                .foregroundColor(.blue)
            Text(task.title).strikethrough( task.isCompleted ? true : false, color: Color.black)
        }
    }
}

