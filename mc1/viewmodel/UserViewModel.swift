//
//  UserViewModel.swift
//  mc1
//
//  Created by Alessandro Vinaccia on 26/10/22.
//

import SwiftUI

class UserViewModel: ObservableObject {
    
    
    @Published var cloths : [Cloth] = CLOTHS
    
    @Published var user : User = User(name: "Alessandro", money: 1000, exp: 1000, level: 7, outfit: Outfit(
            hat: "hair_black_gel",
            eyes: "eyes_sunglasses",
            beard: "",
            shirt: ""
                  ))
    
    func updateOutfit(newCloth : Cloth){
        if(newCloth.unlocked){
            switch (newCloth.type){
            case .hat:
                user.outfit.hat = newCloth.name
            case .eyes:
                user.outfit.eyes = newCloth.name
            case .beard:
                user.outfit.beard = newCloth.name
            case .shirt:
                user.outfit.shirt = newCloth.name
            }
        }else{
            if(user.money >= newCloth.price){
                user.money -= newCloth.price
                let indx = cloths.firstIndex(where: {$0.name == newCloth.name})!;
                cloths[indx].unlock();
            }
        }
    }
    
    func tryCloth(cloth : Cloth){
        //I have no idea
    }
    
}
