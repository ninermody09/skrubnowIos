//
//  StripePaymentViewController.swift
//  Skrub
//
//  Created by Harsh on 10/18/16.
//  Copyright © 2016 Harsh. All rights reserved.
//

import UIKit

class StripePaymentViewController: UIViewController {

    @IBOutlet weak var submitButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func submitButtonPressed(sender: AnyObject) {
        self.view.removeFromSuperview()
    }


}
