//
//  CarInformationViewController.swift
//  asdfsdf
//
//  Created by Harsh on 10/21/16.
//  Copyright © 2016 Harsh. All rights reserved.
//

import UIKit

class CarInformationViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var mainFormView: UIScrollView!
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var instructionsTF: UITextField!
    @IBOutlet weak var modelTF: UITextField!
    @IBOutlet weak var phoneNumberTF: UITextField!
    @IBOutlet weak var colorTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    @IBOutlet weak var carMakeTF: UITextField!
    @IBOutlet weak var widthOfScrollView: NSLayoutConstraint!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        widthOfScrollView.constant = self.view.frame.width - 30
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.clear
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        //always fill the view
        blurEffectView.frame = self.view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(blurEffectView)
        self.view.sendSubview(toBack: blurEffectView)
        
        
        self.carMakeTF.delegate = self
        self.instructionsTF.delegate = self
        self.modelTF.delegate = self
        self.phoneNumberTF.delegate = self
        self.colorTF.delegate = self
        self.yearTF.delegate = self
        self.carMakeTF.becomeFirstResponder()
        self.cancelButton.layer.cornerRadius = 15.0
        self.doneButton.layer.cornerRadius = 15.0
        
    }
    @IBAction func doneButtonPressed(_ sender: AnyObject) {
        self.view.removeFromSuperview()
    }
    @IBAction func tapGestureHit(_ sender: AnyObject) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
     //   textField.resignFirstResponder()

        switch textField.tag
        {
        case 0:
            self.yearTF.becomeFirstResponder()
            break
        case 1:
            self.colorTF.becomeFirstResponder()
            break
        case 2:
            self.phoneNumberTF.becomeFirstResponder()
            break
        case 3:
            self.modelTF.becomeFirstResponder()
            break
        case 4:
            self.instructionsTF.becomeFirstResponder()
            break
        default:
            textField.resignFirstResponder()
        }
        return true

    }
    
}
