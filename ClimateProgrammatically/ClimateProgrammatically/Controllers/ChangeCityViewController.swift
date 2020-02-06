//
//  ChangeCityViewController.swift
//  ClimateProgrammatically
//
//  Created by MattHew Phraxayavong on 1/28/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation

import UIKit

protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
    
}

class ChangeCityViewController: UIViewController {
    
    var mainView = ChangeCityView()
    var delegate : ChangeCityDelegate?
    
    override func viewDidLoad() {
        super .viewDidLoad()
        setup()
        
//        self.delegate
    }
    
    func setup() {
        setupView()
    }
    func setupView() {
        let mainViews = ChangeCityView(frame: self.view.frame)
        mainView = mainViews
        view.addSubview(mainView)
        mainView.getCityButton.addTarget(self, action: #selector(getWeatherPressed(_:)), for: .touchUpInside)
    }
    
    
    
    
    @objc func getWeatherPressed(_ sender: AnyObject) {
        let cityName = mainView.cityNameTextfield.text!
        delegate?.userEnteredANewCityName(city: cityName)
        self.dismiss(animated: true, completion: nil)

        
    }

   
}
