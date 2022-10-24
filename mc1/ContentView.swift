//
//  ContentView.swift
//  mc1
//
//  Created by Alessandro Vinaccia on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .leading){
                List{
                    HStack{
                        NavigationLink {
                            //page
                        } label: {
                            Image(systemName: "globe").resizable().frame(width: 50, height: 50)
                            Text("placeno test")
                        }
                    }
                }.frame(height: 80)
                HStack{
                    Text("Tasks").font(.title2)
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                    }.padding(.trailing)
                }
                .padding(.leading).frame(height: 0)
                
                Section{
                    
                    List{
                        Section(header: Text("Today"))
                        {
                            HStack{
                                Image(systemName: "globe")
                                Text("Test")
                            }
                            HStack{
                                Image(systemName: "globe")
                                Text("Test")
                            }
                            HStack{
                                Image(systemName: "globe")
                                Text("Test")
                            }
                        }
                        
                        
                        Section(header: Text("Tomorrow"))
                        {
                            HStack{
                                Image(systemName: "globe")
                                Text("Test")
                            }
                            HStack{
                                Image(systemName: "globe")
                                Text("Test")
                            }
                            HStack{
                                Image(systemName: "globe")
                                Text("Test")
                            }
                        }
                        
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
