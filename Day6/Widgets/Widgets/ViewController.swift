//
//  ViewController.swift
//  Widgets
//
//  Created by Ataberk Özkar on 15.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    
    @IBOutlet weak var mSwitch: UISwitch!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var textFieldData: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonDoIt(_ sender: Any) {
        
        if let dataResult = textFieldData.text {
            labelResult.text = dataResult
        }
        
        
    }
    
    @IBAction func buttonHappy(_ sender: Any) {
        imageView.image = UIImage(named: "happy")
    }
    
    @IBAction func buttonUnhappy(_ sender: Any) {
        imageView.image = UIImage(named: "unhappy")
    }
    
    @IBAction func switchChance(_ sender: UISwitch) {
        if sender.isOn {
            
            print("On")
            
        }else {
            
            print("Off")
            
        }
    }
    
    @IBAction func buttonShow(_ sender: Any) {
        
        print("Switch : \(mSwitch.isOn)")
        let Index = segmentedControl.selectedSegmentIndex
        let chooseCategory = segmentedControl.titleForSegment(at: Index)
        print("Segmented  : \(chooseCategory!)")
        
    }
    
    @IBAction func segmentedChance(_ sender: UISegmentedControl) {
        let Index = sender.selectedSegmentIndex
        let chooseCategory = sender.titleForSegment(at: Index)
        print("Choose : \(chooseCategory!)")
    }
}

