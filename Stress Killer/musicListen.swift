//
//  musicListen.swift
//  Stress Killer
//
//  Created by Rafsan Chowdhury on 11/17/16.
//  Copyright © 2016 Mcraf. All rights reserved.
//

import UIKit
import AVFoundation

class musicListen: UIViewController {
    
    @IBOutlet weak var pauseOutlet: UIButton!
    @IBOutlet weak var restartOutlet: UIButton!
    @IBOutlet weak var stopOutlet: UIButton!
    
    var ButtonAudioURL = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("MusicMan", ofType: "mp3")!)
    
    var ButtonAudioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pauseOutlet.hidden = true
        restartOutlet.hidden = true
        stopOutlet.hidden = true
        ButtonAudioPlayer = try!AVAudioPlayer(contentsOfURL: ButtonAudioURL, fileTypeHint: nil)


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func backPressed(sender: AnyObject) {
        ButtonAudioPlayer.stop()
        self.dismissViewControllerAnimated(true, completion: nil)
    }
   
    @IBAction func playAudio(sender: AnyObject) {
        ButtonAudioPlayer.play()
        pauseOutlet.hidden = false
        restartOutlet.hidden = false
        stopOutlet.hidden = false
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
        ButtonAudioPlayer.stop()
    }
    
    @IBAction func stopButton(sender: AnyObject) {
        ButtonAudioPlayer.stop()
        ButtonAudioPlayer.currentTime = 0
    }
    @IBAction func restartButton(sender: AnyObject) {
        ButtonAudioPlayer.stop()
        ButtonAudioPlayer.currentTime = 0
        ButtonAudioPlayer.play()
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
