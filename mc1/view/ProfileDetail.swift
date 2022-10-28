//
//  ProfileDetail.swift
//  mc1
//
//  Created by Katia De Lucia on 24/10/22.
//

import SwiftUI

struct ProfileDetail: View {
    var userVM : UserViewModel

    let data = cloths
    
    let columns = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        NavigationView{
            VStack(alignment: .center) {
                VStack(alignment: .leading) {
                    Text("Rookie (Level 7)")
                    HStack{
                        ProgressView(value: 0.65)
                            .progressViewStyle(LinearProgressViewStyle())
                        Image(systemName: "tshirt.fill")
                    }
                    
                }
                .padding([.top, .leading, .trailing])
                
                
                ZStack{
                    Image("avatar")
                        .resizable()
                        .frame(width: 254, height: 254)
                        .zIndex(0)
                    Image(userVM.user.outfit.hat.name)
                        .resizable()
                        .frame(width: 254, height: 254)
                        .position(x: 198, y: 155)
                        .zIndex(0)
                    Image(userVM.user.outfit.eyes.name)
                        .resizable()
                        .frame(width: 254, height: 254)
                        .position(x: 195, y: 148)
                        .zIndex(0)
                    Image(userVM.user.outfit.beard.name)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .position(x: 200, y: 120)
                        .zIndex(0)
                    
                }.frame(height: 300)
                HStack {
                    Text("Wardarobe")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.leading, 22.0)
                        
                    Spacer()
                }
                ScrollView{
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(data) { cloth in
                            Button {
                                userVM.updateOutfit(newCloth: cloth)
                            } label: {
                                Image(cloth.name)
                                    .resizable()
                                    .frame(width: 64, height: 64)
                            }
                        }
                    }
                }
            }
        }.navigationTitle("Peppe")
    }
}

