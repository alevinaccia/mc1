//
//  ChallengeViewModel.swift
//  mc1
//
//  Created by Giovanni Mandato on 25/10/22.
//

import SwiftUI

class ChallengeViewModel: ObservableObject {

    @Published var challenge : [Challenge] = [
        Challenge(id: UUID(), title: "1000 steps", active: false, description: "blablabla"),
        Challenge(id: UUID(), title: "vcftyuk", active: false, description: "vcfghuik,mnb")
     ]
    
    
    func updateChallenge(index : Int){
        challenge[index].setActive()
    }
    
    func addChallenge(id : UUID) {
        //challenges.append(challenges.first(where: {$0.id == id})!)
        //let lentgh = challenges.count
        //challenges[lentgh].active.toggle()
    }
    
    
    
    
}

