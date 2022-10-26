//
//  ProfileDetail.swift
//  mc1
//
//  Created by Katia De Lucia on 24/10/22.
//

import SwiftUI

struct ProfileDetail: View {
    var body: some View {
       
        VStack {
           
            HStack { //Spacer()
                Text ("Peppe")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading, 22.0)
                
                Spacer()
                Image(systemName: "bitcoinsign.circle")
                    .resizable()
                    .frame(width: 40.0, height: 40.0)
                    .padding(.trailing)

               //Spacer()
            }
            
            
            VStack {
                HStack{
                    Text("Rookie (Level 7)")
                    Spacer()
                } // finish HStack
                HStack{
                    ProgressView(value: 0.65)
                        .progressViewStyle(LinearProgressViewStyle())
                    Image(systemName: "tshirt.fill")
                    Spacer()
                    
                } // finish HStack
                
            } // finish VStack
            .padding([.top, .leading, .trailing])
            
            
            HStack{
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 200.0, height: 200.0)
                
            } // finish HStack
            
            VStack {
                HStack{ Text("Wardarobe")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.leading, 22.0)
                    Spacer()     } // finish HStack
                
                HStack{
                    Spacer()
                    VStack{
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 40.0, height: 40.0)
                            .foregroundColor(.blue)
                        Text ("level 1")
                    } // finish VStack
                    Spacer()
                    VStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 40.0, height: 40.0)
                            .foregroundColor(.blue)
                        Text ("level 2")
                    } // finish VStack
                    Spacer()
                    VStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 40.0, height: 40.0)
                            .foregroundColor(.blue)
                        Text ("level 3")
                    } // finish VStack
                    Spacer()
                    VStack{
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 40.0, height: 40.0)
                            .foregroundColor(.blue)
                        Text ("level 4")
                    } // finish VStack
                    Spacer()
                    
                } // finish HStack
                
                
                
                HStack{
                    Spacer()
                    VStack{
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 40.0, height: 40.0)
                            .foregroundColor(.blue)
                        Text ("level 5")
                    } // finish VStack
                    Spacer()
                    VStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 40.0, height: 40.0)
                            .foregroundColor(.blue)
                        Text ("level 6")
                    } // finish VStack
                    Spacer()
                    VStack {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 40.0, height: 40.0)
                            .foregroundColor(.blue)
                        Text ("level 7")
                    } // finish VStack
                    Spacer()
                    VStack{
                        Image(systemName: "lock.fill")
                            .resizable()
                            .frame(width: 30.0, height: 40.0)
                        Text ("level 8")
                    } // finish VStack
                    Spacer()
                    
                } // finish HStack
                
                HStack{
                    Spacer()
                    VStack{
                        Image(systemName: "lock.fill")
                            .resizable()
                            .frame(width: 30.0, height: 40.0)
                        Text ("level 9")
                    } // finish VStack
                    Spacer()
                    VStack {
                        Image(systemName: "lock.fill")
                            .resizable()
                            .frame(width: 30.0, height: 40.0)
                        Text ("level 10")
                    } // finish VStack
                    Spacer()
                    VStack {
                        Image(systemName: "lock.fill")
                            .resizable()
                            .frame(width: 30.0, height: 40.0)
                        Text ("level 11")
                    } // finish VStack
                    Spacer()
                    VStack{
                        Image(systemName: "lock.fill")
                            .resizable()
                            .frame(width: 30.0, height: 40.0)
                        Text ("level 12")
                    } // finish VStack
                    Spacer()
                } // finish HStack
                
            } //finish VStack
            
            Spacer()
            
        } //finish VStack
    } // finish some View
} // finish View var body



struct ProfileDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetail()
    }
}
