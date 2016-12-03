//
//  ViewController.swift
//  Stress Killer
//
//  Created by Rafsan Chowdhury on 11/16/16.
//  Copyright © 2016 Mcraf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var testStress: UIButton!
    @IBOutlet weak var musicStress: UIButton!
    @IBOutlet weak var laughStress: UIButton!
    @IBOutlet weak var excerciseStress: UIButton!
    @IBOutlet weak var chatStress: UIButton!
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        testStress.layer.cornerRadius = 7
        musicStress.layer.cornerRadius = 7
        laughStress.layer.cornerRadius = 7
        excerciseStress.layer.cornerRadius = 7
        chatStress.layer.cornerRadius = 7
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

