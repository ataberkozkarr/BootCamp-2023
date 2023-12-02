//
//  contact.swift
//  ContactApps
//
//  Created by Ataberk Özkar on 27.11.2023.
//

import Foundation

class Contact {
    
    var contact_id:Int?
    var contact_name:String?
    var contact_no:String?
    
    init() {
        
    }
    
    init(contact_id: Int, contact_name: String, contact_no: String) {
        self.contact_id = contact_id
        self.contact_name = contact_name
        self.contact_no = contact_no
    }
}
