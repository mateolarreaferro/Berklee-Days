//
//  ViewController.swift
//  PS2.3
//
//  Created by Mateo Larrea Ferro on 2/4/20.
//  Copyright © 2020 Mateo Larrea Ferro. All rights reserved.
//

import UIKit
import AVFoundation
// Class
class ViewController: UIViewController, AVAudioPlayerDelegate {
    var player: AVAudioPlayer = AVAudioPlayer()
    
    let B1 = Bundle.main.bundleURL.appendingPathComponent("boton 1.wav")
    let B2 = Bundle.main.bundleURL.appendingPathComponent("boton 2.wav")
    let B3 = Bundle.main.bundleURL.appendingPathComponent("boton 3.wav")
// Declaration of Variables
    var Player1 = AVAudioPlayer()
    var Player2 = AVAudioPlayer()
    var Player3 = AVAudioPlayer()
    
    fileprivate func soundPlayer(player:inout AVAudioPlayer, path: URL, count: Int){
          do {
              player = try AVAudioPlayer(contentsOf: path, fileTypeHint: nil)
              player.numberOfLoops = count
              player.play()
          }
          catch {
              print("Error in playing sound")
          }
      }
    
    // Adds functionality to the buttoms
    @IBAction func B1(_ sender: UIButton) {
    self.view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        soundPlayer(player: &Player1, path: B1, count: 0)
    }
        
    @IBAction func B2(_ sender: Any) {
            self.view.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        soundPlayer(player: &Player2, path: B2, count: 0)
        }
    @IBAction func B3(_ sender: Any) {
    self.view.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        soundPlayer(player: &Player3, path: B3, count: 0)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

   
}
