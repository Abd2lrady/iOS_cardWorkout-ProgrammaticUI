//
//  RulesVC.swift
//  iOS_cardWorkout-Programmatic
//
//  Created by Abdelrady on 11/1/20.
//  Copyright © 2020 Abdelrady. All rights reserved.
//

import UIKit

class RulesVC: UIViewController {

    let titleLabel = UILabel()
    let rulesLabel = UILabel()
    let exerciseLabel = UILabel()
    let backToPlay = CWButton(backgroundColor: .blue, title: "Back To Play")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
        
    }
    
    func configureUI(){
        configureTitle()
        configureRules()
        configureExercise()
        configureBackToPlayButton()
    }
    
    
   func configureTitle(){
    view.addSubview(titleLabel)
    titleLabel.translatesAutoresizingMaskIntoConstraints = false
    titleLabel.text = "Rules"
    titleLabel.textAlignment = .center
    titleLabel.font = .systemFont(ofSize: 50, weight: .heavy)
    
    NSLayoutConstraint.activate([
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
         ])
    
    }
    
    func configureRules(){
        view.addSubview(rulesLabel)
        rulesLabel.translatesAutoresizingMaskIntoConstraints = false
        rulesLabel.text = "The value of each card represents the number of the exercise you do.\n\nJ = 11, Q = 12, K = 13, A = 14"
        rulesLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        rulesLabel.textAlignment = .center
        rulesLabel.numberOfLines = 0
        
        NSLayoutConstraint.activate([
            rulesLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            rulesLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            rulesLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)

            ])

    }

    func configureExercise(){
        view.addSubview(exerciseLabel)
        exerciseLabel.translatesAutoresizingMaskIntoConstraints = false

        exerciseLabel.text = "♦️ = Push-ups\n\n♠️ = Sit-ups\n\n♥️ = Burpees\n\n♣️ = Jumping jacks"
        exerciseLabel.numberOfLines = 0

        NSLayoutConstraint.activate([
            exerciseLabel.topAnchor.constraint(equalTo: rulesLabel.bottomAnchor, constant: 70),
            exerciseLabel.widthAnchor.constraint(equalToConstant: 200),
            exerciseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
    }
    
    func configureBackToPlayButton(){
        view.addSubview(backToPlay)
        NSLayoutConstraint.activate([
                backToPlay.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                backToPlay.widthAnchor.constraint(equalToConstant: 250),
                backToPlay.heightAnchor.constraint(equalToConstant: 60),
                backToPlay.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
        ])
        backToPlay.addTarget(self, action: #selector(backToPlayBtnTapped), for: .touchUpInside)
    }
   
    @objc func backToPlayBtnTapped(){
        dismiss(animated: true)
    }
}
