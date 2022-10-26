//
//  UserViewModel.swift
//  mc1
//
//  Created by Alessandro Vinaccia on 26/10/22.
//

import SwiftUI

class UserViewModel: ObservableObject {
    
    @Published var user : User = User(name: "Alessandro", money: 1000, exp: 1000, level: 7, outfit: Outfit(
        hat: Cloth(id: UUID(), name: "hair_black_gel", type: .hat),
            eyes: Cloth(id: UUID(), name: "eyes_sunglasses", type: .eyes),
            beard: Cloth(id: UUID(), name: "", type: .beard),
            shirt: Cloth(id: UUID(), name: "", type: .shirt)
                  ))
    
    func updateOutfit(newCloth : Cloth){
        switch (newCloth.type){
        case .hat:
            user.outfit.hat.setName(newName: newCloth.name)
        case .eyes:
            user.outfit.eyes.setName(newName: newCloth.name)
        case .beard:
            user.outfit.beard.setName(newName: newCloth.name)
        case .shirt:
            user.outfit.shirt.setName(newName: newCloth.name)
        }
    }
    
}
