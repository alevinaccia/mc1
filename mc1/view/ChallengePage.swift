//
//  ChallengePage.swift
//  mc1
//
//  Created by Giovanni Mandato on 24/10/22.
//

import SwiftUI

struct ChallengePage: View {
    @State private var showModalAdd: Bool = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack{
                GroupBox(label: Label("Heart rate", systemImage: "heart.fill").font(.largeTitle)) {
                    Text("69 BPM").font(.title)
                }
                GroupBox(label: Label("Heart rate", systemImage: "heart.fill").font(.largeTitle)) {
                    Text("69 BPM").font(.title)
                }
                .navigationBarTitle(Text("Challeges"))
                
                
            }
        }
    }
}
