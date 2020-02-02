//
//  ChangeCityView.swift
//  ClimateProgrammatically
//
//  Created by MattHew Phraxayavong on 1/28/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class ChangeCityView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setup(){
        setupView()
    }
    
    func setupView(){
        setupSubview()
        setupConstraints()
    }
    func setupSubview(){
        addSubview(backgroundImage)
        addSubview(cityNameTextfield)
    }
    
     let backgroundImage: UIImageView = {
           let image = UIImageView()
           image.image = UIImage(named: "cityBackground")
           return image
       }()
    
    let cityNameTextfield: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .white
        return textField
    }()
    
    
}
