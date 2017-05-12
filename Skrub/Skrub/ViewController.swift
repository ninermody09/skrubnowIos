//
//  ViewController.swift
//  Skrub
//
//  Created by Harsh on 10/18/16.
//  Copyright © 2016 Harsh. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    let locationManager = CLLocationManager()
    var scheduleAppointmentVC: ScheduleAppointmentViewController!
    var carInformationVC: CarInformationViewController!
    var stripePaymentVC: StripePaymentViewController!
    
    @IBOutlet weak var stripeButton: UIButton!

    @IBOutlet weak var carfuckingbutton: UIButton!
 
    @IBOutlet weak var scheduleButton: UIButton!
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapView.delegate = self
        self.mapView.showsUserLocation = true
        self.mapView.layer.cornerRadius = 5.0
        locationManager.requestWhenInUseAuthorization()
    }
    
    @IBAction func scheduleButtonPressed(sender: AnyObject) {
        self.scheduleAppointmentVC = ScheduleAppointmentViewController.init(nibName:"ScheduleAppointmentViewController", bundle: nil)
//        self.presentViewController(self.scheduleAppointmentVC, animated: true, completion: nil)
        self.scheduleAppointmentVC.view.frame = CGRect(x:0, y:0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        self.view.addSubview(self.scheduleAppointmentVC.view)
        self.view.layoutSubviews()
    }
    @IBAction func stripeButtonPressed(sender: AnyObject) {
        
        self.stripePaymentVC = StripePaymentViewController.init(nibName:"StripePaymentViewController", bundle: nil)
        
        self.stripePaymentVC.view.frame = CGRect(x:0, y:0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        self.view.addSubview(self.stripePaymentVC.view)
        self.view.layoutSubviews()
    }
    @IBAction func carInfoButtonPressed(sender: AnyObject) {
        
        self.carInformationVC = CarInformationViewController.init(nibName:"CarInformationViewController", bundle: nil)

        self.carInformationVC.view.frame = CGRect(x:0, y:0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        self.view.addSubview(self.carInformationVC.view)
        self.view.layoutSubviews()
    }
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 400, 400)
        self.mapView.setRegion(self.mapView.regionThatFits(region), animated: true)
        let point = MKPointAnnotation()
        point.coordinate = userLocation.coordinate
        point.title = "Location"
        self.mapView.addAnnotation(point)
        NSLog("Location of Human %f", point.coordinate.latitude)
    }
    
    
    
}


