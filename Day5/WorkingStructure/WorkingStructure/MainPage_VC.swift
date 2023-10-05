//
//  ViewController.swift
//  WorkingStructure
//
//  Created by Ataberk Özkar on 4.10.2023.
//

import UIKit

class MainPage_VC: UIViewController {

    @IBOutlet weak var labelMainPage: UILabel!
   
    //Leading - Left - Start
    //Trailing - Right - End
    
    override func viewDidLoad() {// uygulama ilk açıldığında çalışır (1 kere çalışır)/
        super.viewDidLoad()
        labelMainPage.text = "Welcome"
    }
    
    override func viewWillAppear(_ animated: Bool) { // sayfa her göründüğünde çalışır
        print("viewwillappear work")
    }
    
    override func viewWillDisappear(_ animated: Bool) { //sayfa her görünmez olduğunda çalışır
        print("viewwilldisappear work")
    }

    @IBAction func buttonDOIT(_ sender: Any) {
        labelMainPage.text = "Welcome2"
        
    }
    
    @IBAction func buttonStart(_ sender: Any) {
        let person = Persons(name: "Ataberk", age: 25, height: 6.2, relationship: true)
        performSegue(withIdentifier: "gameScreenPass", sender: person)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Method Working")
        
        if segue.identifier == "gameScreenPass" {
            print("gameScreenPass working")
            
            if let type = sender as? Persons {
                
                let senderVC = segue.destination as! GameScreen_VC
                senderVC.person = type
            }
        }
    }
    
    
    @IBAction func buttonSave(_ sender: Any) {
        print("Save Selected")
    }
    
    
    
    @IBAction func buttonAdd(_ sender: Any) {
        
        print("Add Selected")
    }
    
}

