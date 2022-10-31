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
        NavigationView {
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
                        }
                        .frame(width: 360.0, height: 80.0)
                    }
                }
            }.navigationBarItems(leading: Button("Back", action: { dismiss() }))
        }
    }
} 
