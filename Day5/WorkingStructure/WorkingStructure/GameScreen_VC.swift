//
//  GameScreen_VC.swift
//  WorkingStructure
//
//  Created by Ataberk Özkar on 4.10.2023.
//

import UIKit

class GameScreen_VC: UIViewController {
    
    var person:Persons?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let p = person{
            print("--------GameScreenVC--------")
            print("Name : \(p.name!)")
            print("Age : \(p.age!)")
            print("Height : \(p.height!)")
            print("Relationship : \(p.relationship!)")
        }

        
    }

    @IBAction func buttonStop(_ sender: Any) {
        performSegue(withIdentifier: "resultScreenPass", sender: nil)
    }
    
    @IBAction func buttonBack(_ sender: Any) {
        // navigationController?.popViewController(animated: true) //bir önceki sayfaya geri dönmek için
        navigationController?.popToRootViewController(animated: true) //Anasayafaya dönüş
    }
}
