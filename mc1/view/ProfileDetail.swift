//
//  ProfileDetail.swift
//  mc1
//
//  Created by Katia De Lucia on 24/10/22.
//

import SwiftUI

struct ProfileDetail: View {
    var body: some View {
        VStack {
            VStack {
                HStack{
                    Text("Rookie (Level 7)")
                    Spacer()
                } // finish HStack
                HStack{
                    ProgressView(value: 0.65)
                        .progressViewStyle(LinearProgressViewStyle())
                    Image(systemName: "tshirt.fill")
                } // finish HStack
              
            } // finish VStack
            .padding([.top, .leading, .trailing])
             
            
            HStack{
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 200.0, height: 200.0)
                    
            } // finish HStack
            
            HStack {
                Text("Wardarobe")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading, 22.0)
                Spacer()
            } //finish HStack
            
            Spacer()} //finish VStack
    } // finish some View
} // finish View var body
    


struct ProfileDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetail()
    }
}
