//
//  ViewController.swift
//  BullsEye
//
//  Created by Kang on 15/10/24.
//  Copyright © 2015年 Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue:Int = 50
    var targetValue:Int = 0
    var score = 0
    var round = 0
    @IBOutlet weak var slider:UISlider!
    @IBOutlet weak var targetLabel:UILabel!
    @IBOutlet weak var scoreLabel:UILabel!
    @IBOutlet weak var roundLabel:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
        updateTargetValue()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func startNewRound()
    {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        slider.value = Float(currentValue)
        
    }
    func updateTargetValue()
    {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
        
    }
    @IBAction func showAlert()
    {
        let diffirent = abs(currentValue - targetValue)
        var points = 100 - diffirent
        score += points
        round += 1
        let title: String
        if diffirent == 0 {
            title = "Prefect!"
            points += 100
        }
        else if diffirent < 5
        {
            title = "You almost Had it!"
        }
        else
        {
            title = "Not even close..."
        }
        let message = "The value of the slider is :\(points)"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
        startNewRound()
        updateTargetValue()
    }
    
    @IBAction func sliderMove(slider:UISlider)
    {
        currentValue = lroundf(slider.value) ;
    }
}

