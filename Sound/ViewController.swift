//
//  ViewController.swift
//  Sound
//
//  Created by 菊地英治 on 2022/04/29.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var drumButton: UIButton!
    
    @IBOutlet var pianoButton: UIButton!

    @IBOutlet var guitarButton: UIButton!
    
    let drumSoundplayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    let pianoSoundplayer = try!AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
    let guitarSoundplayer = try!AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }

    @IBAction func touchDownDrumButton () {
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        drumSoundplayer.currentTime = 0
        drumSoundplayer.play()
        
    }
    @IBAction func touchUpDrumButton(){
        drumButton.setImage(UIImage(named:"drumImage"), for: .normal)
    }

    @IBAction func touchDownPianoButton(){
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        pianoSoundplayer.currentTime = 0
        pianoSoundplayer.play()
    }
    
    @IBAction func touchUppianoButton(){
        pianoButton.setImage(UIImage(named:"pianoImage"), for: .normal)
    }
    
    @IBAction func touchDownguitarButton(){
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        guitarSoundplayer.currentTime = 0
        guitarSoundplayer.play()
    }
    
    @IBAction func touchUpguitarButton(){
        guitarButton.setImage(UIImage(named:"guitarImage"), for: .normal)
    }
}

