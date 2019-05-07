//
//  ViewController.swift
//  Exercise
//
//  Created by khoirunnisa' rizky noor fatimah on 06/05/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet var viewColor: UIView!
    
    var red : Float = 0
    var blue : Float = 0
    var green : Float = 0
    
    func colorChanged() {
//        if redSlider.isEnabled == false {
//            redSlider.value = 0
//        } else if blueSlider.isEnabled == false {
//            blueSlider.value = 0
//        } else if greenSlider.isEnabled == false {
//            greenSlider.value = 0
//        }
        
        red = redSlider.value
        blue = blueSlider.value
        green = greenSlider.value
    
        let redBounded = String (format: "%.2f", red)
        let blueBounded = String (format: "%.2f", blue)
        let greenBounded = String (format: "%.2f", green)
        
        redLabel.text = "\(redBounded)"
        blueLabel.text = "\(blueBounded)"
        greenLabel.text = "\(greenBounded)"
        
        viewColor.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1.0)
        
    }
    
    @IBAction func sliderAction(_ sender: Any) {
        colorChanged()
    }
    

    @IBAction func `switch`(_ sender: UISwitch) {
        if sender.tag == 1 {
        redSlider.isEnabled = !redSlider.isEnabled //toggling
        } else if sender.tag == 2 {
            blueSlider.isEnabled = !blueSlider.isEnabled
        } else if sender.tag == 3 {
            greenSlider.isEnabled = !greenSlider.isEnabled
        }
        //colorChanged()
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        redSlider.value = 0
        blueSlider.value = 0
        greenSlider.value = 0
        colorChanged()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redLabel.text = ""
        blueLabel.text = ""
        greenLabel.text = ""
        
        viewColor.layer.cornerRadius = 20
        viewColor.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        viewColor.layer.borderWidth = 8
    }


}

