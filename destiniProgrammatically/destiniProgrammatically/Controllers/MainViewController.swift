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
    var storyIndex: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        setup()
        mainView.storyLabel.text = mainView.answerStoryModel.story1
        mainView.topButton.setTitle(mainView.answerStoryModel.answer1a, for: .normal)
        mainView.bottomButton.setTitle(mainView.answerStoryModel.answer1b, for: .normal)
    }
    
    func setup() {
        setupView()
    }
    
    func setupView() {
        let MainViews = MainView(frame: self.view.frame)
        self.mainView = MainViews
        self.view.addSubview(mainView)
        mainView.topButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        mainView.bottomButton.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
    }
    
    @objc func buttonPressed(_ sender: UIButton) {
        if sender.tag == 1 && storyIndex == 1{
            mainView.storyLabel.text = mainView.answerStoryModel.story3
            mainView.topButton.setTitle(mainView.answerStoryModel.answer3a, for: .normal)
            mainView.bottomButton.setTitle(mainView.answerStoryModel.answer3b, for: .normal)
            storyIndex = 3
        } else if sender.tag == 2 && storyIndex == 1{
            mainView.storyLabel.text = mainView.answerStoryModel.story2
            mainView.topButton.setTitle(mainView.answerStoryModel.answer2a, for: .normal)
            mainView.bottomButton.setTitle(mainView.answerStoryModel.answer2b, for: .normal)
            storyIndex = 2
        } else if sender.tag == 1 && storyIndex == 3 {
            mainView.storyLabel.text = mainView.answerStoryModel.story6
            mainView.topButton.isHidden = true
            mainView.bottomButton.isHidden = true
            storyIndex = 6
        } else if sender.tag == 2 && storyIndex == 3 {
            mainView.storyLabel.text = mainView.answerStoryModel.story5
            mainView.topButton.isHidden = true
            mainView.bottomButton.isHidden = true
            storyIndex = 5
        } else if sender.tag == 1 && storyIndex == 2 {
            mainView.storyLabel.text = mainView.answerStoryModel.story3
            mainView.topButton.setTitle(mainView.answerStoryModel.answer3a, for: .normal)
            mainView.bottomButton.setTitle(mainView.answerStoryModel.answer3b, for: .normal)
            storyIndex = 3
        }
    }
    
}
    
