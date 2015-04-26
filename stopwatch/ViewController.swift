//
//  ViewController.swift
//  stopwatch
//
//  Created by Click Labs132 on 20/01/15.
//  Copyright (c) 2015 ClickLabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var  timer = NSTimer()
    var count = 00
    var resulthh = 00

    @IBOutlet weak var colon: UILabel!
    @IBOutlet weak var resulth: UILabel!
    @IBOutlet weak var result: UILabel!
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("time"), userInfo: nil, repeats: true)
       var count1 = count + 1
        for var i = count;i <= count1;i++  {
        
        //colon.NSTimeInterval?.hidden = true
        }
        self.colon.hidden = false
       
    }
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        count = 00
        result.text = "00"
        resulth.text = "00"
    }
    @IBAction func cancel(sender: AnyObject) {
        timer.invalidate()
        count = 00
        result.text = "00"
        resulth.text = "00"
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func time() {
        count++
        if count == 60 {
            resulthh = resulthh + 1
            resulth.text = "\(resulthh)"
            count = 0
        }
        result.text = "\(count)"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

