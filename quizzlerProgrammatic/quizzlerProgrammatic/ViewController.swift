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
    
    let allQuestions = QuestionBank()
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    var score: Int = 0
    
    override func viewDidLoad() {
        view.backgroundColor = .blue
        setup()
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.questionText
    }
    
    
    
    func setup(){
        setupView()
        setupConstraints()
    }
    
    func setupView() {
        view.addSubview(questionLabel)
        view.addSubview(scoreLabel)
        view.addSubview(progressLabel)
        view.addSubview(trueButton)
        view.addSubview(falseButton)
    }
    
    func setupConstraints() {
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 200).isActive = true
        questionLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        questionLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
        questionLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20).isActive = true
//        questionLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
//        questionLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        scoreLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        scoreLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        
        progressLabel.translatesAutoresizingMaskIntoConstraints = false
        progressLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        progressLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20).isActive = true
        
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
        label.numberOfLines = 3
        label.textAlignment = .center
        return label
    }()
    
    let scoreLabel: UILabel = {
        let label = UILabel()
        label.text = "Score: 0"
        label.textColor = .white
        return label
    }()
    
    let progressLabel: UILabel = {
        let label = UILabel()
        label.text = "x/13"
        label.textColor = .white
        return label
    }()
    
    let trueButton: UIButton = {
        let button = UIButton()
        button.setTitle("True", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1921568627, green: 0.6392156863, blue: 0.262745098, alpha: 1)
        button.addTarget(self, action: #selector(answerPressed), for: .touchUpInside)
        button.tag = 1
        return button
    }()
    
    let falseButton: UIButton = {
        let button = UIButton()
        button.setTitle("False", for: .normal)
        button.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        button.addTarget(self, action: #selector(answerPressed), for: .touchUpInside)
        button.tag = 2
        return button
    }()
    
    @objc func answerPressed(_ sender: UIButton) {
        print("button pressed \(Int.random(in: 1..<10))")
        print("picked answer is \(allQuestions.list[0].answer)")
        //    print("the true tag is \(trueButton.tag)")
        //    print("the false tag is \(falseButton.tag)")
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber = questionNumber + 1
        nextQuestion()
    }
    
    func updateScore() {
        scoreLabel.text = ("Score: \(score)")
    }
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            print("Correct!")
            score += 1
            updateScore()
        } else {
            print("Wrong")
        }
        progressLabel.text = ("\(questionNumber + 1)/13")
        
    }
    
    func startOver() {
        questionNumber = 0
        score = 0
        scoreLabel.text = "Score: 0"
        progressLabel.text = "X/13"
    }
    
    func nextQuestion() {
        
        if questionNumber <= 12 {
        questionLabel.text = allQuestions.list[questionNumber].questionText
        } else {
//            print("Quiz Over")
            
            let alert = UIAlertController(title: "Awesome!", message: "You've finished all the questions", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
        
    }
    
}
