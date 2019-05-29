//
//  SecondViewController.swift
//  Delegate and Protocols
//
//  Created by khoirunnisa' rizky noor fatimah on 09/05/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit

//untuk connect data dari VC lain, sistem kerja segue itu A-> B1->A1->B2 dst ga balik lagi ke sebelumnya.

protocol CanReceive {
    
    func dataReceived(data: String)
    
}
class SecondViewController: UIViewController {
    
    var delegate : CanReceive?
    
    var data = ""

    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = data
        
    }
    
    @IBAction func sendDataBack(_ sender: Any) {
        
        delegate?.dataReceived(data: textField.text!)
        dismiss(animated: true, completion: nil)
//        performSegue(withIdentifier: "passItBack", sender: self)
        
        
    }
    
}
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
////
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        if segue.identifier == "passItBack" {
//             let nextVC = segue.destination as! FirstViewController
//
//            nextVC.newData = textField.text!
//
//
//        }
// Pass the selected object to the new view controller.
        
//  }
 
    


