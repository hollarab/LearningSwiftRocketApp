//
//  ViewController.swift
//  RocketApp
//
//  Created by hollarab on 10/16/15.
//  Copyright © 2015 a. brooks hollar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var rocketImage: UIImageView!
    @IBOutlet weak var cloudImage: UIImageView!
    
    var initialRocketFrame:CGRect = CGRectMake(0, 0, 0, 0)
    var initialCloudFrame:CGRect = CGRectMake(0, 0, 0, 0)
    
    var timer:NSTimer?
    var isRunning:Bool = false
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // store the initial locations of things
        initialCloudFrame  = cloudImage.frame
        initialRocketFrame = rocketImage.frame
        
        // start the animation loop
    }
    
    func resetUI() {
        rocketImage.frame = initialRocketFrame
        rocketImage.image = UIImage(named: "rocket")
        cloudImage.frame = initialCloudFrame
    }


 /*****  ADD CODE BELOW HERE *****/

    @IBAction func liftOffTouched(sender: AnyObject) {
        // button touched
    }
    
    
}

