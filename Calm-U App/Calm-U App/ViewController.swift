//
//  ViewController.swift
//  Calm-U App
//
//  Created by khoirunnisa' rizky noor fatimah on 10/06/19.
//  Copyright © 2019 khoirunnisa' rizky noor fatimah. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox
//fungsi struct ialah cara cepat transfer data antar view, static artinya datanya tetep kesimpen gitu
struct publicData{
    static var counter : Int = 1
}

class ViewController: UIViewController, AVAudioPlayerDelegate, UITextFieldDelegate {
    
    let myPi : CGFloat = .pi
    var center : CGPoint!
    var radius : CGFloat! //jari-jari
    var imageList : [UIImageView] = []
    var angleList : [CGFloat] = []
    var audioPlayer = AVAudioPlayer()
    var bipTextField = UITextField()
    var bipEvery : String = ""
    var countNumber : Int = 0
    var soundIsOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundMusic(volume: 0.1)
        
        center = view.center
        radius = center!.x - 60
        
        DrawCircle()
        DrawImage()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(fullAnimation(_:)))
        countBip.text = String(publicData.counter)
        tapGesture.delegate = self as? UIGestureRecognizerDelegate
        view.addGestureRecognizer(tapGesture)
        heartAppeared.isHidden = true
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture(gesture:)))
        swipeUp.direction = UISwipeGestureRecognizer.Direction.up
        self.view.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeDown(gesture:)))
        swipeDown.direction = UISwipeGestureRecognizer.Direction.down
        self.view.addGestureRecognizer(swipeDown)
        
        self.becomeFirstResponder()
        
//        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panGesture(_:)))
//        panGesture.delegate = self as? UIGestureRecognizerDelegate
//        view.addGestureRecognizer(panGesture)
        
        
    }
    
    @IBOutlet weak var heartAppeared: UIImageView!
    @IBOutlet weak var slashOutlet: UILabel!
    @IBOutlet weak var countBip: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    //enable detection of shake motion
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            
            if soundIsOn {
                backgroundMusic(volume: 0)
            }
            else {
                backgroundMusic(volume: 0.1)
            }
            soundIsOn = !soundIsOn
        }
    }
    
    @objc func respondToSwipeDown(gesture: UIGestureRecognizer)  {
        countNumber = 0
        countLabel.text = "\(countNumber)"
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.error)
    }
    @objc func respondToSwipeGesture(gesture: UIGestureRecognizer){
        showAlert()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        showAlert()
        
    }
    
    func showAlert() {
        let alert = UIAlertController(title: "", message: "", preferredStyle: .alert)
        
        alert.addTextField { (textField) -> Void in
            self.bipTextField = textField
            self.bipTextField.delegate = self //REQUIRED
            self.bipTextField.placeholder = "Bullets per Round"
            textField.keyboardType = .numberPad
        }
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            alert.dismiss(animated: true, completion: nil)
            publicData.counter = Int(self.bipTextField.text ?? "1") ?? 1
            self.bipEvery = self.bipTextField.text!
            self.countBip.text = String(publicData.counter)
        }))
        
        present(alert, animated: true, completion: nil)
        countLabel.text = "0"
        countNumber = 0
    }
    
    func backgroundMusic(volume : Double) {
        let AssortedMusics = NSURL(fileURLWithPath: Bundle.main.path(forResource: "water sound", ofType: "wav")!)
        audioPlayer = try! AVAudioPlayer(contentsOf: AssortedMusics as URL)
        
        audioPlayer.prepareToPlay()
        audioPlayer.numberOfLoops = -1
        audioPlayer.play()
        
        audioPlayer.volume = Float(volume)
    }
    
    func setupCount() {
        let boundNumber = publicData.counter
        if countNumber < boundNumber {
            countNumber += 1
        } else {
            countNumber = 1
        }
        countLabel.text = "\(countNumber)"
    }
    
    func DrawCircle(){
        //draw circle
        let circle = UIView(frame: CGRect(x: center.x, y: center.y, width: radius * 2, height: radius * 2))
        circle.center = view.center
        circle.backgroundColor = .clear
        circle.layer.cornerRadius = radius
        circle.layer.borderColor = UIColor.black.cgColor
        circle.layer.borderWidth = 1.5
        view.addSubview(circle)
        
    }
    
    //draw the image list
    func DrawImage(){
        //angle of the image
        var angle : CGFloat = myPi * 5/6 //porsi lintasan pada lingkaran
        
        //number of image
        let max : Int = 22
        
        //const difference in angle each image berlawanan jarum jam
        let differece = CGFloat(CGFloat( angle * 2 / CGFloat(max-2) ))
        
        for _ in 1 ..< max{
            let image: UIImage = UIImage(named: "Oval")!
            let bgImage = UIImageView(image: image)
            bgImage.frame = CGRect(x: 0,y: 0,width: 40,height: 40)
            
            angleList.append(angle)
            //setting the center of image
            let x = sin(angle) * radius! + center!.x
            let y = cos(angle) * radius! + center!.y
            
            bgImage.center.x = x
            bgImage.center.y = y
            
            self.view.addSubview(bgImage)
            imageList.append(bgImage)
            angle = angle - differece
        }
    }
    //kasih animasi tiap gambar
    func giveAnimation(){
        let maxNum = angleList.count-1
        for i in 0...maxNum{
            let startAngle = (myPi/2) - angleList[i]
            var endAngle = (myPi/2) - angleList[0]
            if i != maxNum{
                endAngle = (myPi/2) - angleList[i+1]
            }
            let path = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: CGFloat(endAngle), clockwise: true)
            
            let shape = CAShapeLayer()
            shape.path = path.cgPath
            shape.lineWidth = 2
            shape.strokeColor = UIColor.clear.cgColor
            shape.fillColor = UIColor.clear.cgColor
            self.view.layer.addSublayer(shape)
            
            let animation = CAKeyframeAnimation()
            animation.path = path.cgPath
            animation.repeatCount = 0
            animation.duration = 0.5
            
            imageList[i].layer.add(animation, forKey: "position")
        }
        
        
    }
    
    
    @objc func fullAnimation(_ sender: UIImageView) {
        giveAnimation()
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
        setupCount()
        heartAppeared.isHidden = true
        countLabel.isHidden = false
        countBip.isHidden = false
        slashOutlet.isHidden = false
        
        if countLabel.text == bipEvery {
            AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
            heartAppeared.isHidden = false
            countLabel.isHidden = true
            countBip.isHidden = true
            slashOutlet.isHidden = true
            fadeOut()
        }
    }
    
    @objc func panGesture(_ sender: UIPanGestureRecognizer) {
        let state = sender.state
        switch state {
        case .ended:
            giveAnimation()
        case .possible:
            print("possible")
        case .began:
            print("began")
        case .changed:
            print("changed")
        case .cancelled:
            print("cancelled")
        case .failed:
            print("failed")
        @unknown default:
            print("default")
        }
    }
    
    func fadeOut(){
        UIView.animate(withDuration: 1 , animations: {
            //initial constant
            //scale 2x
            self.heartAppeared.transform = CGAffineTransform(scaleX: 1.25, y: 1.25)
        }) { (isFinished) in
            self.fadeIn()
        }
    }
    func fadeIn(){
        UIView.animate(withDuration: 1, animations: {
            // balikin ke size semula
            self.heartAppeared.transform = CGAffineTransform(scaleX: 1, y: 1)
        }) { (isFinished) in
            self.fadeOut()
        }
}


}
