//
//  ViewController.swift
//  Delegate and Protocols
//
//  Created by khoirunnisa' rizky noor fatimah on 09/05/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanReceive {
    
    func dataReceived(data: String) {
        label.text = data
    }
    

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendDataPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "sendDataForwards", sender: self)
        
    }
    
    @IBAction func changeBlue(_ sender: Any) {
        view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards" {
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textField.text!
            
            secondVC.delegate = self
        }
    }
    
}

