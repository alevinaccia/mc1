//
//  entities.swift
//  mc1
//
//  Created by Alessandro Vinaccia on 24/10/22.
//

import SwiftUI

struct Task : Identifiable{
    
    var id : UUID
    var title : String
    var day : Day
    var notes : String
    var isCompleted : Bool
    
}


struct Challenge : Identifiable {
    
    var id : UUID
    var title : String
    var active : Bool
    var description : String
    
    mutating func toggleActive(){
        self.active.toggle()
    }

}


