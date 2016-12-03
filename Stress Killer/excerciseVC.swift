//
//  excerciseVC.swift
//  Stress Killer
//
//  Created by Rafsan Chowdhury on 12/2/16.
//  Copyright © 2016 Mcraf. All rights reserved.
//
import UIKit

class excerciseVC: UIViewController {
    
    @IBOutlet weak var doneBtn: UIButton!
    @IBOutlet weak var thisBreathingEx: UILabel!
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapStartLBL: UILabel!
    
    override func viewDidLoad() {
        
        
        doneBtn.hidden = true
        super.viewDidLoad()
        
        
        
        
        /*let imageData = NSData(contentsOfURL: NSBundle.mainBundle().URLForResource("breath", withExtension: "gif")!)
        let imageGif = UIImage.gifWithData(imageData!)
        let imageView = UIImageView(image: imageGif)
        
        imageView.frame = CGRect(x: 20.0, y: 156.0, width: 374.0, height: 455.0)
        view.addSubview(imageView)
        delay(16.15) {
            self.doneBtn.hidden = false
        }*/
        
    }
    @IBAction func tapStart(sender: AnyObject) {
        thisBreathingEx.hidden = true
        tapBtn.hidden = true
        tapStartLBL.hidden = true
        
        let imageData = NSData(contentsOfURL: NSBundle.mainBundle().URLForResource("breath", withExtension: "gif")!)
        let imageGif = UIImage.gifWithData(imageData!)
        let imageView = UIImageView(image: imageGif)
        
        imageView.frame = CGRect(x: 20.0, y: 156.0, width: 374.0, height: 455.0)
        view.addSubview(imageView)
        delay(15.6) {
            self.doneBtn.hidden = false
        }
        
    }

    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
}

        
    

