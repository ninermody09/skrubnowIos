//
//  ViewController.swift
//  testMAp
//
//  Created by Harsh on 9/2/16.
//  Copyright © 2016 Harsh. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    let locationManager = CLLocationManager()
    @IBOutlet weak var buttonsView: UIView!
    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonsView.layer.cornerRadius = 10.0
        self.mapView.delegate = self
        self.mapView.showsUserLocation = true

        locationManager.requestWhenInUseAuthorization()
    }

    func mapView(mapView: MKMapView, didUpdateUserLocation userLocation: MKUserLocation) {
        let region = MKCoordinateRegionMakeWithDistance(userLocation.coordinate, 800, 800)
        self.mapView.setRegion(self.mapView.regionThatFits(region), animated: true)
        let point = MKPointAnnotation()
        point.coordinate = userLocation.coordinate
        point.title = "Location"
        self.mapView.addAnnotation(point)
        NSLog("Location of Human %@", point.coordinate.latitude)
    }
    
}

