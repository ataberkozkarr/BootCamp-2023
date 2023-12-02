//
//  ContactRegister.swift
//  ContactApps
//
//  Created by Ataberk Özkar on 27.11.2023.
//

import UIKit

class ContactRegister: UIViewController {
    @IBOutlet weak var tfNameAdd: UITextField!
    @IBOutlet weak var tfNumberAdd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func tfButtonSave(_ sender: Any) {
        
        if let ka = tfNameAdd.text , let kt = tfNumberAdd.text {
            save(contact_no: kt, contact_name: ka)
        }
            
    }
    
    func save(contact_no:String,contact_name:String){
        print("Person saved : \(contact_name) - \(contact_no)")
        
        
    }
}
