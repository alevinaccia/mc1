//
//  ChallengeViewModel.swift
//  mc1
//
//  Created by Giovanni Mandato on 25/10/22.//

import SwiftUI


class ChallengeViewModel: ObservableObject {
    
    @Published var challenge : [Challenge] = [
        Challenge(id: UUID(), title: "10000 steps",
                  active: false,
                  description: "During the whole day you have to do at least 10000 steps"),
        
        Challenge(id: UUID(), title: "Sleep between 6-8 hours",
                  active: false,
                  description: "Sleep between 6 and 8 hours in order to be more productive"),
       
        Challenge (id:UUID(), title: "Drink 8 glasses of water",active: false,description: "During the whole day you have to drink at least 8 glasses of water ( is preferred the natural one)"),
        Challenge (id:UUID(), title: "Unplug and reduce screen time.",active: false,description: "Stay away from your smartphone/Smart TV. Eliminate/cut back on social media and/or TV."),
        Challenge (id:UUID(), title: "Let sunshine for 5 minutes",active: false,description: "Spend at least 5 minutes in the sunshine. Vitamin D is essential for our health."),
        Challenge (id:UUID(), title: "Read for 10 minutes",active: false,description: "Books are one of the best ways to learn more and explore the world around you. So read al least for 10 minutes")
    ]
    
    
    func updateChallenge(index : Int){
        challenge[index].toggleActive()
    }
    
    func reupdateChallenge(at offsets: IndexSet){
        challenge[offsets.first!].toggleActive()
    }
    
    
}
