//
//  ContactDetail.swift
//  ContactApps
//
//  Created by Ataberk Özkar on 27.11.2023.
//

import UIKit

class ContactDetail: UIViewController {

    @IBOutlet weak var tfPersonNumber: UITextField!
    @IBOutlet weak var tfPersonName: UITextField!
    
    var contact:Contact?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let k = contact {
            tfPersonName.text = k.contact_name
            tfPersonNumber.text = k.contact_no
        }

    }
    
    @IBAction func buttonUpdate(_ sender: Any) {
        
        if let ka = tfPersonName.text , let kt = tfPersonNumber.text, let k = contact {
            update(contact_id: k.contact_id!, contact_no: kt, contact_name: ka)
        }
    }
    
    func update(contact_id:Int, contact_no:String,contact_name:String){
        print("Person updated: \(contact_id) - \(contact_name) - \(contact_no)")
        
        
    }
}
