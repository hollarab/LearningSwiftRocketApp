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
    var running:Bool = false
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // store the initial locations of things
        initialCloudFrame  = cloudImage.frame
        initialRocketFrame = rocketImage.frame
        
        // start the animation loop
        startTimer()
    }

    func startTimer() {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.05, target: self, selector: "timerFired", userInfo: nil, repeats: true)
    }
    
    func stopTimer() {
        timer?.invalidate()
    }
    
    func resetUI() {
        rocketImage.frame = initialRocketFrame
        rocketImage.image = UIImage(named: "rocket")
        cloudImage.frame = initialCloudFrame
    }

    @IBAction func liftOffTouched(sender: AnyObject) {
        resetUI()
        running = !running
    }

 /*****  ADD CODE BELOW HERE *****/
    
    func timerFired() {
        let step = slider.value
        
        if running {
            var frame = rocketImage.frame
            frame.origin.y -= CGFloat(step)
            rocketImage.frame = frame
            
            frame = cloudImage.frame
            frame.origin.x += CGFloat(1)
            cloudImage.frame = frame
        }
    }
    
    
    
    

}

