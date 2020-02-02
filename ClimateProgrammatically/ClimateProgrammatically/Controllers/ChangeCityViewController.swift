//
//  ChangeCityViewController.swift
//  ClimateProgrammatically
//
//  Created by MattHew Phraxayavong on 1/28/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation

import UIKit

class ChangeCityViewController: UIViewController {
    
    var mainView = ChangeCityView()
    
    override func viewDidLoad() {
        super .viewDidLoad()
        setup()
    }
    
    func setup() {
        setupView()
    }
    func setupView() {
        let mainViews = ChangeCityView(frame: self.view.frame)
        mainView = mainViews
        view.addSubview(mainView)
    }

}
