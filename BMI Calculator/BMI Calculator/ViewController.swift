//
//  ViewController.swift
//  BMI Calculator
//
//  Created by khoirunnisa' rizky noor fatimah on 24/04/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var result: Float=0
    
    var weight: Float=0
    
    var height: Float=0

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var weightTitle: UILabel!
    
    @IBOutlet weak var heightTitle: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var valueBMILabel: UILabel!
    
    @IBOutlet weak var statusBMILabel: UILabel!
    
    @IBOutlet weak var weightSliderStatus: UISlider!
    
    @IBOutlet weak var heightSliderStatus: UISlider!
    
    @IBOutlet weak var bmiTitle: UILabel!
    
    @IBOutlet weak var segmentedLabel: UISegmentedControl!
    
    @IBAction func lightDarkAction(_ sender: UISegmentedControl) {
        if segmentedLabel.selectedSegmentIndex == 0{
            self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            titleLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            weightLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            weightTitle.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            heightLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            heightTitle.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            bmiTitle.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            valueBMILabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            statusBMILabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        } else if segmentedLabel.selectedSegmentIndex == 1 {
            self.view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            titleLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            weightLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            weightTitle.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            heightLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            heightTitle.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            bmiTitle.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            valueBMILabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            statusBMILabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
         let weightBerat = String(format: "%.2f", weightSliderStatus.value)
        
        weightLabel.text = "\(weightBerat) Kg"
        
         itIsBMICalculator(yourWeightInKg: weightSliderStatus.value, yourHeightInMeters: heightSliderStatus.value)
        
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let heightTinggi = String(format: "%.2f", heightSliderStatus.value)
        
        heightLabel.text = "\(heightTinggi) m"
        
         itIsBMICalculator(yourWeightInKg: weightSliderStatus.value, yourHeightInMeters: heightSliderStatus.value)
       
        
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        valueBMILabel.text = "kg/m2"
        statusBMILabel.text = ""
        
    }
    
    func itIsBMICalculator (yourWeightInKg : Float , yourHeightInMeters : Float) {
       let yourBMI = yourWeightInKg / (yourHeightInMeters*yourHeightInMeters)
        let resultBounded = String(format: "%.2f", yourBMI)
        
        valueBMILabel.text = "\(resultBounded) Kg/m2"
        
        
       if yourBMI >= 30 {
           statusBMILabel.text = "You are obessed."
            statusBMILabel.textColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
      } else if yourBMI >= 25 {
           statusBMILabel.text = "You are overweight."
            statusBMILabel.textColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)
       } else if yourBMI > 18.5  {
          statusBMILabel.text = "You have a normal weight."
            statusBMILabel.textColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
       } else {
           statusBMILabel.text = "You are underweight."
            statusBMILabel.textColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
       }
        
    }
    
    
}

