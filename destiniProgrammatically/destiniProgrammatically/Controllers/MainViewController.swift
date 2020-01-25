//
//  MainViewController.swift
//  destiniProgrammatically
//
//  Created by MattHew Phraxayavong on 1/25/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    var mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        setup()
    }
    
    func setup() {
        setupView()
    }
    
    func setupView() {
        let MainViews = MainView(frame: self.view.frame)
        self.mainView = MainViews
        self.view.addSubview(mainView)
    }
    
}
    
