//
//  ViewController.swift
//  Location
//
//  Created by fengyi on 2019/11/30.
//  Copyright © 2019 cxh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        requestLocationAccess()
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
    }

    func requestLocationAccess() {
        let status = CLLocationManager.authorizationStatus()
        
        switch status {
        case .authorizedAlways, .authorizedWhenInUse:
            return
            
        case .denied, .restricted:
            print("location access denied")
            
        default:
            locationManager.requestWhenInUseAuthorization()
        }
    }
    
}

