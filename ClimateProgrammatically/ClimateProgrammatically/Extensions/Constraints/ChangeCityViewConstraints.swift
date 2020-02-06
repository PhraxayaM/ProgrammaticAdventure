//
//  ChangeCityViewConstraints.swift
//  ClimateProgrammatically
//
//  Created by MattHew Phraxayavong on 1/28/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

extension ChangeCityView {
    
    func setupConstraints(){
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        backgroundImage.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        
        cityNameTextfield.translatesAutoresizingMaskIntoConstraints = false
        cityNameTextfield.topAnchor.constraint(equalTo: topAnchor, constant: 200).isActive = true
        cityNameTextfield.leftAnchor.constraint(equalTo: leftAnchor, constant: 50).isActive = true
        cityNameTextfield.rightAnchor.constraint(equalTo: rightAnchor, constant: -50).isActive = true
        cityNameTextfield.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        getCityButton.translatesAutoresizingMaskIntoConstraints = false
        getCityButton.topAnchor.constraint(equalTo: cityNameTextfield.topAnchor, constant: 80).isActive = true
        getCityButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 80).isActive = true
        getCityButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -80).isActive = true
        
    }
    
    
}
