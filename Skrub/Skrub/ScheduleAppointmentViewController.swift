//
//  ScheduleAppointmentViewController.swift
//  Skrub
//
//  Created by Harsh on 10/18/16.
//  Copyright © 2016 Harsh. All rights reserved.
//

import UIKit

class ScheduleAppointmentViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate  {
    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var viewOfSchedule: UIView!
    @IBOutlet weak var nextButton: UIButton!
    var carInformationVC:CarInformationViewController!
    var mainVC: ViewController!
     let pickerData = ["9:00AM","10:00AM","11:00AM","12:00PM","1:00PM","2:00PM","3:00PM","4:00PM","5:00PM","6:00PM"]
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
        self.viewOfSchedule.layer.cornerRadius = 8.0

    }
    //MARK: Data Sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    @IBAction func cancelButtonPressed(sender: AnyObject) {
        self.view.removeFromSuperview()
    }
    @IBAction func nextButtonPressed(sender: AnyObject) {
        self.view.removeFromSuperview()
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }

}
