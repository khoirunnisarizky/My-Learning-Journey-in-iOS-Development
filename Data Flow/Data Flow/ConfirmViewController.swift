//
//  ConfirmViewController.swift
//  Data Flow
//
//  Created by khoirunnisa' rizky noor fatimah on 16/05/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var phoneLabel: UILabel!
    
    var fullname : String!
    var phone : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        fullNameLabel.text = fullname
        phoneLabel.text = phone
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
