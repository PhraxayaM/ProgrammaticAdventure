//
//  MainView.swift
//  destiniProgrammatically
//
//  Created by MattHew Phraxayavong on 1/25/20.
//  Copyright © 2020 MattHew Phraxayavong. All rights reserved.
//

import Foundation
import UIKit

class MainView: UIView {
    
    var storyIndex: Int = 1
    let answerStoryModel = StoryModel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        setupSubview()
        setupViewConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupSubview() {
        addSubview(backgroundImage)
        addSubview(storyLabel)
        addSubview(topButton)
        addSubview(bottomButton)
        addSubview(restartButton)
    }
    
    func setupViewConstraints() {
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage.heightAnchor.constraint(equalToConstant: frame.height).isActive = true
        backgroundImage.widthAnchor.constraint(equalToConstant: frame.width).isActive = true
        
        storyLabel.translatesAutoresizingMaskIntoConstraints = false
        storyLabel.heightAnchor.constraint(equalToConstant: 300).isActive = true
        storyLabel.widthAnchor.constraint(equalToConstant: 300).isActive = true
        storyLabel.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        storyLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        
        topButton.translatesAutoresizingMaskIntoConstraints = false
        topButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 30).isActive = true
        topButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -30).isActive = true
        topButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        topButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
        topButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
        
        bottomButton.translatesAutoresizingMaskIntoConstraints = false
        bottomButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 30).isActive = true
        bottomButton.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -30).isActive = true
        bottomButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        bottomButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
        bottomButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -40).isActive = true
        
        restartButton.translatesAutoresizingMaskIntoConstraints = false
        restartButton.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 30).isActive = true
        restartButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
//        restartButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor).isActive = true
        
    }
    
    let backgroundImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "background")
        return image
        
    }()
    
    let storyLabel: UILabel = {
        let label = UILabel()
        label.text = "test"
        label.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        label.numberOfLines = 15
        label.textAlignment = .center
        
        return label
    }()
    
    let topButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 1, green: 0.04444635659, blue: 0, alpha: 1)
        button.setTitle("Top Button", for: .normal)
        button.tag = 1
        return button
    }()
    
    let bottomButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        button.setTitle("Bottom Button", for: .normal)
        button.tag = 2
        return button
    }()
    
    let restartButton: UIButton = {
        let button = UIButton()
        button.setTitle("Restart", for: .normal)
        button.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        return button
    }()
}
