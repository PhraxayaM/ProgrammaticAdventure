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
        addSubview(getCityButton)
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
    
    let getCityButton: UIButton = {
        let button = UIButton()
        button.setTitle("Get Weather", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        return button
    }()
    
    
}
