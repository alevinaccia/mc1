//
//  ProfileDetail.swift
//  mc1
//
//  Created by Katia De Lucia on 24/10/22.
//

import SwiftUI

struct ProfileDetail: View {
    
    var userVM : UserViewModel
    
    let columns = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        
        NavigationView{
            VStack(alignment: .center) {
                VStack(alignment: .leading) {
                    HStack{
                        Text("Rookie (Level 7)")
                        Spacer()
                        Text("\(userVM.user.money)$")
                    }
                    HStack{
                        ProgressView(value: 0.65)
                            .progressViewStyle(LinearProgressViewStyle())
                        Image(systemName: "tshirt.fill")
                    }
                    
                }
                .padding([.top, .leading, .trailing])
                
                
                AvatarView(userVM: userVM).frame(height: 300)
                HStack {
                    Text("Wardarobe")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.leading, 22.0)
                        
                    Spacer()
                }
                ScrollView{
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(userVM.cloths) { cloth in
                            Button {
                                userVM.updateOutfit(newCloth: cloth)
                            } label: {
                                ZStack{
                                    if(!cloth.unlocked){
                                        Image(cloth.name).zIndex(0).saturation(0.0)
                                        VStack{
                                            Image(systemName: "lock")
                                            Text("\(cloth.price)$").zIndex(1).foregroundColor(Color.black)
                                        }
                                    }else{
                                        Image(cloth.name).zIndex(0).saturation(1.0)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }.navigationTitle("Peppe")
    }
}

