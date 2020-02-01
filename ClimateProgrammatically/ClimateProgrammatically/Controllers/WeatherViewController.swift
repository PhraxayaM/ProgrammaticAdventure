//
//  WeatherViewController.swift
//  ClimateProgrammatically
//
//  Created by MattHew Phraxayavong on 1/27/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

class WeatherViewController: UIViewController, CLLocationManagerDelegate {
    
   
    
    var mainView = MainView()
    
    override func viewDidLoad() {
        super .viewDidLoad()
        setup()
        
    }
    
    func setup() {
        setupView()
      
    }
    
    func setupView()  {
        let mainViews = MainView(frame: self.view.frame)
        mainView = mainViews
        view.addSubview(mainView)
        
    }
    
}
