//
//  ChallengeViewModel.swift
//  mc1
//
//  Created by Giovanni Mandato on 25/10/22.//

import SwiftUI


class ChallengeViewModel: ObservableObject {
    
    @Published var challenge : [Challenge] = [
        Challenge(id: UUID(), title: "1000 steps", active: false, description: "blablabla"),
        Challenge(id: UUID(), title: "vcftyuk", active: false, description: "vcfghuik,mnb")
    ]
    
    
    func updateChallenge(index : Int){
        challenge[index].toggleActive()
    }
    func reupdateChallenge(at offsets: IndexSet){
        challenge[offsets.first!].toggleActive()
    }
}
