//
//  JournalViewController.swift
//  testing github
//
//  Created by Caitlin Keogh on 7/20/22.
//


import AVFoundation
import UIKit

class JournalViewController: UIViewController {

    @IBOutlet weak var waveButton: UIButton!
    
    @IBOutlet weak var journalPrompt: UILabel!
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func happyPressed(_sender: Any) {
        journalPrompt.text = "That's awesome! Why do you feel happy?"
    }
    
    @IBAction func sadPressed(_ sender: Any) {
        journalPrompt.text = "Oh no! Tell us why you feel sad."
    }
    
    @IBAction func madPressed(_ sender: Any) {
        journalPrompt.text = "Oh no! What's causing your anger?"
    }
    
    @IBAction func excitedPressed(_ sender: Any) {
        journalPrompt.text = "What's making you so excited?"
    }
    
    @IBAction func disgustedPressed(_ sender: Any) {
        journalPrompt.text = "What's making you feel disgusted?"
    }
    
    @IBAction func didTapWaveButton(_ sender: Any) {
        if let player = player, player.isPlaying {
            //stop playback
        }
        else {
            let urlString = Bundle.main.path(forResource: "beach-waves-close-up-6757", ofType: "mp3")
            
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    }
}
