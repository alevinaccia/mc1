//
//  AvatarView.swift
//  mc1
//
//  Created by Alessandro Vinaccia on 28/10/22.
//

import SwiftUI


struct AvatarView: View {
    @ObservedObject var userVM : UserViewModel
    var res : Int
    var page : Bool
    
    var body: some View {
        ZStack{
            Image("avatar")
                .resizable()
                .frame(width: 254 / CGFloat(res), height: 254 / CGFloat(res))
                .zIndex(0)
            Image(userVM.user.outfit.hat)
                .resizable()
                .frame(width: 254 / CGFloat(res), height: 254 / CGFloat(res))
                .position(x: page ? 198 : 32, y: page ? 155 : 40)
                .zIndex(0)
            Image(userVM.user.outfit.eyes)
                .resizable()
                .frame(width: 254 / CGFloat(res), height: 254 / CGFloat(res))
                .position(x: page ? 195 : 32, y: page ? 148 : 37)
                .zIndex(0)
            Image(userVM.user.outfit.beard)
                .resizable()
                .frame(width: 100 / CGFloat(res), height: 100 / CGFloat(res))
                .position(x: page ? 200 : 10, y: page ? 120 : 40)
                .zIndex(0)
            
        }
    }
}

