//
//  AddChallenge.swift
//  mc1
//
//  Created by Giovanni Mandato on 24/10/22.
//

import SwiftUI

struct AddChallenge: View {
    @Environment(\.dismiss) var dismiss
   
    var challengeVM : ChallengeViewModel
    
    var body: some View {
        
        VStack{
            ForEach(challengeVM.challenge) { challenge in
                if(!challenge.active){
                    GroupBox {
                        Button {
                            let index : Int = challengeVM.challenge.firstIndex(where: {$0.id == challenge.id})!
                            challengeVM.updateChallenge(index : index)
                            dismiss()
                            
                        } label: {
                            VStack {
                                Text(challenge.title)
                                Text(challenge.description)
                            }
                        }
                    }
                }
            }
        }
    }
}