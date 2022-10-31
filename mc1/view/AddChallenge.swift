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
    NavigationView{
        VStack{
            ForEach(challengeVM.challenge) { challenge in
                if(!challenge.active){
                    
                    ExtractedView(challenge: challenge, challengeVM: challengeVM)
                        
                }
                }
        }
        .navigationTitle("Challenges")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(leading: Button("Back", action: {dismiss()} ))
                
        }
    }
}

struct ExtractedView: View {
    
    @Environment(\.dismiss) var dismiss
    @State private var isShowingAnsware = false
    
    let challenge : Challenge
    var challengeVM : ChallengeViewModel
    
    var body: some View {
        
            ZStack{
                
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(.white)
                    .shadow(radius: 2.0)
                VStack{
                    HStack{
                        Text(challenge.title)
                            .bold()
                            .font(.title3)
                        Button {
                            let index : Int = challengeVM.challenge.firstIndex(where: {$0.id == challenge.id})!
                            challengeVM.updateChallenge(index : index)
                            dismiss()
                            
                        } label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 30.0)
                                    .frame(width: 50.0, height: 30.0)
                                    .foregroundColor(.black)
                                
                                Text("add")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                    }
                    if isShowingAnsware{
                        Text(challenge.description)
                            .font(.subheadline)
                            .foregroundColor(Color.black)
                            .opacity(0.8)
                    }
                    
                    
                    
                }
            }  .onTapGesture {
                isShowingAnsware.toggle()
            }       .frame(width: 370.0, height: isShowingAnsware ? 150.0  :  60.0)
                
        }
    }

