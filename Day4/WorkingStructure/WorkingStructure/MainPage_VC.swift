//
//  ViewController.swift
//  WorkingStructure
//
//  Created by Ataberk Özkar on 4.10.2023.
//

import UIKit

class MainPage_VC: UIViewController {

    @IBOutlet weak var labelMainPage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelMainPage.text = "Welcome"
    }

    @IBAction func buttonDOIT(_ sender: Any) {
        labelMainPage.text = "Welcome2"
        
    }
    
    @IBAction func buttonStart(_ sender: Any) {
        performSegue(withIdentifier: "gameScreenPass", sender: nil)
        
    }
}

