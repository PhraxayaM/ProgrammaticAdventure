//
//  ViewController.swift
//  ClimateProgrammatically
//
//  Created by MattHew Phraxayavong on 1/27/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

class MainViewController: UIViewController, CLLocationManagerDelegate
{
    
    var mainView = MainView()
    let WEATHER_URL = "api.openweathermap.org/data/2.5/weather"
    let APP_ID = "e189bc2edf10fd5264acc12fce89736e"
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        setup()
        locationManager.delegate = self
              locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
              locationManager.requestWhenInUseAuthorization()
        
    }
    
    func setup(){
        setupView()
    }
    
    func setupView(){
        let MainViews = MainView(frame: self.view.frame)
        mainView = MainViews
        self.view.addSubview(mainView)
    }
    
    
    
    
    
}
