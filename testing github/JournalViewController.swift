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
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
                
                guard let url = url else {
                    return
                }
                player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString))
                
                guard let player = player else {
                    return
                }
                
                player.play
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
