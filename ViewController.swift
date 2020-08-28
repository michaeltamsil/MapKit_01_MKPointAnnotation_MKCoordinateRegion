//
//  ViewController.swift
//  Adding PIns to a Map
//
//  Created by michael tamsil on 28/08/20.
//  Copyright © 2020 michael tamsil. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let annotation = MKPointAnnotation()
        
        annotation.coordinate = CLLocationCoordinate2D(latitude: 1.014892, longitude: 104.073823)
        annotation.title = "Praktek Dokter Hewan Maiyus Musrianti"
        annotation.subtitle = "Buka 25 jam"
        mapView.addAnnotation(annotation)
        
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 10000, longitudinalMeters: 10000)
        
        mapView.setRegion(region, animated: true)
    }
}

