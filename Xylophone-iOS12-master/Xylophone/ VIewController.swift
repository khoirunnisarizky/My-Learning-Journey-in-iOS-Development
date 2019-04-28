//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
//import AVFoundation
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    let soundArray : [String] = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    
    //var xylophoneSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "note1", ofType: "wav")!)
    
    //var audioPlayer = AVAudioPlayer()
    //var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func notedPressed(_ sender: UIButton) {
        
        
        playSound(selectedSoundFileName: soundArray[sender.tag-1])
        
        
        /*
        if let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
            
       let url = Bundle.main.url(forResource: "note1", withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
            
        } catch let error as NSError {
            print(error.description)
 
        
    }
 */
            }
    func playSound(selectedSoundFileName : String) {
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        audioPlayer.play()
    }

    }
