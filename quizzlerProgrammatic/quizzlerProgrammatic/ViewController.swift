//
//  ViewController.swift
//  quizzlerProgrammatic
//
//  Created by MattHew Phraxayavong on 1/19/20.
//  Copyright © 2020 Matthew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = .blue
        setup()
    }
    
    
    
    func setup(){
        setupView()
        setupConstraints()
    }
    
    func setupView() {
        view.addSubview(questionLabel)
        view.addSubview(scoreLabel)
        view.addSubview(trueButton)
        view.addSubview(falseButton)
    }
    
    func setupConstraints() {
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200).isActive = true
        questionLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        scoreLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        
        trueButton.translatesAutoresizingMaskIntoConstraints = false
        trueButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 300).isActive = true
        trueButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        trueButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
        trueButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        trueButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -220).isActive = true
        
        falseButton.translatesAutoresizingMaskIntoConstraints = false
        falseButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 300).isActive = true
        falseButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        falseButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 250).isActive = true
        falseButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        falseButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20).isActive = true
        
    }
    
    let questionLabel: UILabel = {
        let label = UILabel()
        label.text = "Question"
        label.textColor = .white
        return label
    }()
    
    let scoreLabel: UILabel = {
        let label = UILabel()
        label.text = "Score: "
        label.textColor = .white
        return label
    }()
    
    let trueButton: UIButton = {
        let button = UIButton()
        button.setTitle("True", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1921568627, green: 0.6392156863, blue: 0.262745098, alpha: 1)
        return button
    }()
    
    let falseButton: UIButton = {
        let button = UIButton()
        button.setTitle("False", for: .normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        return button
    }()
    
}
