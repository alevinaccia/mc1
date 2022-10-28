//
//  AvatarView.swift
//  mc1
//
//  Created by Alessandro Vinaccia on 28/10/22.
//

import SwiftUI

struct AvatarView: View {
    var userVM : UserViewModel
    
    var body: some View {
        ZStack{
            Image("avatar")
                .resizable()
                .frame(width: 142, height: 194)
                .zIndex(0)
            Image(userVM.user.outfit.hat)
                .resizable()
                .frame(width: 152, height: 90)
                .position(x: 195, y: 75)
                .zIndex(0)
            Image(userVM.user.outfit.eyes)
                .resizable()
                .frame(width: 114, height: 44)
                .position(x: 195, y: 125)
                .zIndex(0)
            Image(userVM.user.outfit.beard)
                .resizable()
                .frame(width: 100, height: 100)
                .position(x: 200, y: 120)
                .zIndex(0)
            
        }
    }
}

