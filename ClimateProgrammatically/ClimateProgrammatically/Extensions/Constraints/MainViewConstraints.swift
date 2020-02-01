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
        
//        degreeLabel.translatesAutoresizingMaskIntoConstraints = false
//        degreeLabel.topAnchor.constraint(equalTo: topAnchor, constant: frame.height/2).isActive = true
        
        
    }
    
}
