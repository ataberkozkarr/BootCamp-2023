//
//  ViewController.swift
//  userInteractıon
//
//  Created by Ataberk Özkar on 15.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Heading", message: "Message", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){
            action in
            print("Cancel Selected")
        }
        
        alertController.addAction(cancelAction)
        
        let okAction = UIAlertAction(title: "Okay", style: .destructive){
            action in
            print("ok Selected")
        }
        
        alertController.addAction(okAction)
        
        self.present(alertController, animated:true)
        
    }
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Heading", message: "Message", preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel){
            action in
            print("Cancel Selected")
        }
        
        alertController.addAction(cancelAction)
        
        let okAction = UIAlertAction(title: "Okay", style: .destructive){
            action in
            print("ok Selected")
        }
        
        alertController.addAction(okAction)
        
        self.present(alertController, animated:true)
        
    }
    @IBAction func buttonSpecialAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Heading", message: "Message", preferredStyle: .alert)
        
        alertController.addTextField{ textField in
            textField.placeholder = "Write your Data"
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
            
        }
        
        alertController.addTextField()
        
        let okAction = UIAlertAction(title: "Save", style: .cancel){
            action in
            let tf1 = alertController.textFields![0] as UITextField
            let tf2 = alertController.textFields![1] as UITextField
            
            if let comingData = tf1.text, let comingData1 = tf2.text {
                print("Data : \(comingData) - \(comingData1)")
            }
            print("ok Selected")
        }
        
        alertController.addAction(okAction)
        
        self.present(alertController, animated:true)
        
    }
}

