//
//  BreathFOLD(EX2).swift
//  Stress Killer
//
//  Created by Rafsan Chowdhury on 12/2/16.
//  Copyright © 2016 Mcraf. All rights reserved.
//

import UIKit

class BreathFOLD_EX2_: UIViewController {
    
    
    @IBOutlet weak var doneButton: UIButton!

    override func viewDidLoad() {
        doneButton.hidden = true
        super.viewDidLoad()
        
        let imageData2 = NSData(contentsOfURL: NSBundle.mainBundle().URLForResource("123", withExtension: "gif")!)
        let imageGif2 = UIImage.gifWithData(imageData2!)
        let imageView2 = UIImageView(image: imageGif2)
        
        imageView2.frame = CGRect(x: 20.0, y: 148.0, width: 374.0, height: 427.0)
        view.addSubview(imageView2)
        
        delay(4.00){
            
            imageView2.hidden = true
        
            let imageData = NSData(contentsOfURL: NSBundle.mainBundle().URLForResource("breathfold", withExtension: "gif")!)
            let imageGif = UIImage.gifWithData(imageData!)
            let imageView = UIImageView(image: imageGif)
        
            imageView.frame = CGRect(x: 20.0, y: 148.0, width: 374.0, height: 427.0)
            self.view.addSubview(imageView)
        }
        delay(14.50) {
            self.doneButton.hidden = false
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
