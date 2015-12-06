//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Kang on 15/12/6.
//  Copyright © 2015年 Kang. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func close()
    {
        dismissViewControllerAnimated(true, completion: nil)
    }



}
