//
//  ContentView.swift
//  mc1
//
//  Created by Alessandro Vinaccia on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var tasksVM = TaskViewModel()
    @ObservedObject var challengesVM : ChallengeViewModel = ChallengeViewModel()
    @ObservedObject var userVM : UserViewModel = UserViewModel()
    @State private var showingTasks = false
    @State private var showingChallenges = false
    
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                Form{
                    HStack{
                        NavigationLink {
                            ProfileDetail(userVM: userVM)
                        } label: {
                            HStack {
                                Image(systemName: "person.fill").resizable().frame(width: 40, height: 40)
                            } // finish HStack
                            VStack{
                                HStack{
                                    Text(userVM.user.name)
                                        .font(.title2)
                                    Spacer()
                                }
                                HStack {
                                    Text("Rookie (Level 7)")
                                        .font(.subheadline)
                                        .padding(.bottom, -5.0)
                                    Spacer()
                                    
                                }
                                // finish HStack
                                HStack{
                                    ProgressView(value: 0.65)
                                        .progressViewStyle(LinearProgressViewStyle())
                                    Image(systemName: "tshirt.fill")
                                }
                            }
                        }
                    }
                }.frame(height: 110)
                HStack{
                    Text("Tasks").font(.title2)
                    Spacer()
                    Button{
                        showingTasks.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }.padding(.trailing)
                        .sheet(isPresented: $showingTasks) {
                            AddTask(taskVM: tasksVM)
                        }
                    
                }
                .padding(.leading).frame(height: 0)
                
                List{
                    Section(header: Text("Today"))
                    {
                        ForEach($tasksVM.tasks) { $task in
                            if task.day == .today{
                                taskView(task: $task)
                            }
                        }.onDelete(perform: tasksVM.remove)                            
                    }
                    .padding(.leading).frame(height: 0)
                    
                    Section(header: Text("Tomorrow"))
                    {
                        ForEach($tasksVM.tasks) { $task in
                            if task.day == .tomorrow{
                                HStack{
                                    taskView(task: $task)
                                }
                            }.onDelete(perform: tasksVM.remove)
                        }
                        
                        
                        Section(header: Text("Tomorrow"))
                        {
                            ForEach($tasksVM.tasks) { $task in
                                if task.day == .tomorrow{
                                    HStack{
                                        taskView(task: $task)
                                    }
                                }
                            }.onDelete(perform: tasksVM.remove)
                        }
                    }
                }
                
                HStack{
                    Text("Challenges").font(.title2)
                    Spacer()
                    Button{
                        showingChallenges.toggle()
                    } label: {
                        Image(systemName: "plus")
                    } // finish label
                    .padding(.trailing)
                    .sheet(isPresented: $showingChallenges) {
                        AddChallenge(challengeVM: challengesVM)
                    } // finish sheet
                    } // finish HStack
                    .padding([.leading, .bottom]).frame(height: 0)
                    
                }
                .padding(.leading).frame(height: 0)
                
                List{
                    ForEach (challengesVM.challenge){challenge in
                        if challenge.active == true{
                            HStack  {
                                Text(challenge.title)
                                    .foregroundColor(Color.white)              
                            }
                        }
                    }.onDelete(perform: challengesVM.reupdateChallenge)
            
                    .listRowBackground(Color.black)
                        
                    } // finish List
                } // finish VStack
                .scrollDisabled(true)
                .navigationTitle("Dashboard")
                .background(Color(red: 0.949, green: 0.949, blue: 0.97, opacity: 1.0))
            }
        }// finish Navigation View
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
