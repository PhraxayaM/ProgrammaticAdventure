//
//  MainView.swift
//  ClimateProgrammatically
//
//  Created by MattHew Phraxayavong on 1/27/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class MainView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(){
        setupSubview()
        setupConstraints()
    }
    
    func setupSubview() {
        addSubview(backgroundImage)
        addSubview(temperatureLabel)
        addSubview(cityLabel)
        addSubview(changeCityButton)
        addSubview(weatherIcon)
    }
    
    
    
    
    let backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "background")
        return image
    }()
    
    let temperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "30°"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.textAlignment = .center
        label.font = label.font.withSize(70)
        

        return label
    }()
    
    let cityLabel: UILabel = {
        let label = UILabel()
        label.text = "Loading.."
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.textAlignment = .center
        label.font = label.font.withSize(70)
        return label
    }()
    
    let changeCityButton: UIButton = {
        let button = UIButton()
        let image = UIImage(named: "switch")
        button.setImage(image, for: .normal)
//        button.backgroundColor = .red
        return button
    }()
    
    let weatherIcon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "fog")
        return image
    }()
}
