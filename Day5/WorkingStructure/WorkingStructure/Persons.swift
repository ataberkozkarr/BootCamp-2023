//
//  Persons.swift
//  WorkingStructure
//
//  Created by Ataberk Özkar on 5.10.2023.
//

import Foundation

class Persons {
    var name:String?
    var age:Int?
    var height:Double?
    var relationship:Bool?
    
    init() {
        
    }
    
    init(name: String, age: Int , height: Double , relationship: Bool ) {
        self.name = name
        self.age = age
        self.height = height
        self.relationship = relationship
    }
}
