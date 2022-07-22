//
//  MeditationViewController.swift
//  testing github
//
//  Created by Caitlin Keogh on 7/20/22.
//

import AVFoundation
import UIKit

class MeditationViewController: UIViewController {

    @IBOutlet weak var selfLoveButton: UIButton!
    @IBOutlet weak var angerReleaseButton: UIButton!
    @IBOutlet weak var oceanButton: UIButton!
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func angerReleaseButtonPressed(_ sender: Any) {
        if let player = player, player.isPlaying {
            //stop playback
        }
        else {
            let urlString = Bundle.main.path(forResource: "angerRelease", ofType: "mp3")
            
            //set up player and play
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                
                player.play()
        }
            catch {
                print("something went wrong")
            }
    }
    }
    @IBAction func oceanButtonPressed(_ sender: Any) {
        if let player = player, player.isPlaying {
            //stop playback
        }
        else {
            let urlString = Bundle.main.path(forResource: "oceanvisualization", ofType: "mp3")
            
            //set up player and play
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                
                player.play()
        }
            catch {
                print("something went wrong")
            }
    }
    }
    
    @IBAction func selfLoveButtonPressed(_ sender: Any) {
        if let player = player, player.isPlaying {
            //stop playback
        }
        else {
            let urlString = Bundle.main.path(forResource: "selfLoveMeditation", ofType: "mp3")
            
            //set up player and play
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    return
                }
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                
                player.play()
        }
            catch {
                print("something went wrong")
            }
    }
        
        
        
        
        
        
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
