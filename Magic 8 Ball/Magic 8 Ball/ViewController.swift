//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by khoirunnisa' rizky noor fatimah on 22/04/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray : [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var ball_Images: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        methodName()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        methodName()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        methodName()
    }
    func methodName() {
        randomBallNumber = Int.random(in: 0 ... 4)
        ball_Images.image = UIImage(named: ballArray[randomBallNumber])
    }
}

