//
//  ViewController.swift
//  Data Flow
//
//  Created by khoirunnisa' rizky noor fatimah on 16/05/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//gunain delegate ni dari sini mauan
    
    @IBAction func registerPressed(_ sender: Any) {
        if fullNameTextField.text == "" || phoneTextField.text == "" {
            let alert = UIAlertController(title: "Error!", message: "All textfield must be filled", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { (alertAction) in
                alert.dismiss(animated: true, completion: nil)
            }
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        } else {
            performSegue(withIdentifier: "toConfirmPage", sender: self)
        }
    }
    @IBOutlet weak var fullNameTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination =  segue.destination as? ConfirmViewController {
            destination.fullname = fullNameTextField.text
            destination.phone = phoneTextField.text
            
            
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fullNameTextField.delegate = self
        phoneTextField.delegate = self
    }


}
//mempermudah membacanya
extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == fullNameTextField {
            phoneTextField.becomeFirstResponder()
        } else if textField == phoneTextField {
            textField.resignFirstResponder()
            registerPressed(self)
            
        }
        
        return true
    }
}
