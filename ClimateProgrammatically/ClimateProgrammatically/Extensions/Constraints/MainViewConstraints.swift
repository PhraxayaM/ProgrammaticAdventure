//
//  MainViewConstraints.swift
//  ClimateProgrammatically
//
//  Created by MattHew Phraxayavong on 1/28/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

extension MainView {
    
    func setupConstraints() {
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        backgroundImage.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        temperatureLabel.translatesAutoresizingMaskIntoConstraints = false
        temperatureLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        temperatureLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        temperatureLabel.heightAnchor.constraint(equalToConstant: 350).isActive = true
//        temperatureLabel.widthAnchor.constraint(equalToConstant: 350).isActive = true
        temperatureLabel.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: 50).isActive = true
//        temperatureLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 50).isActive = true
        
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
//        cityLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 300).isActive = true
        cityLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        cityLabel.heightAnchor.constraint(equalToConstant: 350).isActive = true
        cityLabel.widthAnchor.constraint(equalToConstant: 350).isActive = true
//        cityLabel.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: 50).isActive = true
//        cityLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 50).isActive = true
        cityLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: 10).isActive  = true

        
        
    }
    
}
