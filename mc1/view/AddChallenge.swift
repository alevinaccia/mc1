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
                                    .font(.title2)
                                    .foregroundColor(.black)
                                Text(challenge.description)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            } // finish VStack
                        }
                        .frame(width: 320.0, height: 65.0) // finish label
                    } // finish Group Box
                } // finish if challenge active
            } // finish For Each
        } // finish VStack
    } // finish Some View
} // finish View
