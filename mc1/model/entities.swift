//
//  entities.swift
//  mc1
//
//  Created by Alessandro Vinaccia on 24/10/22.
//

import SwiftUI

enum ClothType {
    case hat
    case eyes
    case beard
    case shirt
}

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

struct Cloth : Identifiable {
    
    var id : UUID
    var name : String
    var type : ClothType
    
    mutating func setName(newName : String){
        self.name = newName
    }
}

struct Outfit {
    
    var hat : Cloth
    var eyes : Cloth
    var beard : Cloth
    var shirt : Cloth
    
}

struct User {
    
    var name : String
    var money : Int
    var exp : Int
    var level : Int
    
    var outfit : Outfit
}



