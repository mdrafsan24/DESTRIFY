//
//  laughOff.swift
//  Stress Killer
//
//  Created by Rafsan Chowdhury on 11/17/16.
//  Copyright © 2016 Mcraf. All rights reserved.
//

import UIKit
import VideoToolbox

class laughOff: UIViewController {

    @IBOutlet weak var laughViewTop: UIWebView!
    
    @IBOutlet weak var laughViewTop2: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        
        let youtubeURL = "https://www.youtube.com/embed/VJ_eYu9TwGI"
        
        laughViewTop2.allowsInlineMediaPlayback = true
        
        laughViewTop2.loadHTMLString("<iframe width=\"\(laughViewTop2.frame.width)\" height=\"\(laughViewTop2.frame.height)\" src=\"\(youtubeURL)/?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
        
        
        
        let youtubeURL2 = "https://www.youtube.com/embed/2IhQMtpnW_U"
        
        laughViewTop.allowsInlineMediaPlayback = true
        
        laughViewTop.loadHTMLString("<iframe width=\"\(laughViewTop.frame.width)\" height=\"\(laughViewTop.frame.height)\" src=\"\(youtubeURL2)/?&playsinline=2\" frameborder=\"0\" allowfullscreen></iframe>", baseURL: nil)
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
