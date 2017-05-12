//
//  CarInformationViewController.swift
//  Skrub
//
//  Created by Harsh on 10/18/16.
//  Copyright © 2016 Harsh. All rights reserved.
//

import UIKit

class CarInformationViewController: UIViewController {

    @IBOutlet weak var viewWithInfo: UIView!
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.bringSubview(toFront: self.viewWithInfo)
        self.viewWithInfo.alpha = 1.0
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButtonPressed(sender: AnyObject) {
        self.view.removeFromSuperview()
    }
}
