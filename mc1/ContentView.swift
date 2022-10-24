//
//  ContentView.swift
//  mc1
//
//  Created by Alessandro Vinaccia on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var tasksVM = TaskViewModel()
    @State private var showingSheet = false
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                List{
                    HStack{
                        NavigationLink {
                            //page
                        } label: {
                            Image(systemName: "globe").resizable().frame(width: 50, height: 50)
                            Text("Placeholder test")
                        }
                    }
                }.frame(height: 80)
                HStack{
                    Text("Tasks").font(.title2)
                    Spacer()
                    Button{
                        showingSheet.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }.padding(.trailing)
                    .sheet(isPresented: $showingSheet) {
                        AddTask(taskVM: tasksVM)
                    }

                }
                .padding(.leading).frame(height: 0)
                
                List{
                    Section(header: Text("Today"))
                    {
                        ForEach(tasksVM.tasks) { task in
                            if task.day == .today{
                                HStack{
                                    Image(systemName: "globe")
                                    Text(task.title)
                                }
                            }
                        }.onDelete(perform: tasksVM.remove)
                    }
                        
                        
                    Section(header: Text("Tomorrow"))
                    {
                        ForEach(tasksVM.tasks) { task in
                            if task.day == .tomorrow{
                                HStack{
                                    Image(systemName: "globe")
                                    Text(task.title)
                                }
                            }
                        }.onDelete(perform: tasksVM.remove)
                    }
                }
                
            }.navigationTitle("Dashboard")
                .background(Color(red: 0.949, green: 0.949, blue: 0.97, opacity: 1.0))
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
