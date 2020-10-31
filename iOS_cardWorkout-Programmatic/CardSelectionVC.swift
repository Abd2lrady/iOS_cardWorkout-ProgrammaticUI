//
//  CardSelectionVC.swift
//  iOS_cardWorkout-Programmatic
//
//  Created by Abdelrady on 10/31/20.
//  Copyright © 2020 Abdelrady. All rights reserved.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    let cardImageView = UIImageView()
    let stopButton = CWButton(backgroundColor: .red, title: "Stop!")
    let rulesButton = CWButton(backgroundColor: .blue, title: "Rules")
    let restartButton = CWButton(backgroundColor: .green, title: "Restart")


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
        
    }
    

    func configureUI(){
        configureCardImageView()
        configureStopButton()
        configureRestartButton()
        configureRulesButton()
    }
    
    func configureCardImageView(){
       
        // add ImageView to view
        view.addSubview(cardImageView)
        
        // set default image
        cardImageView.image = UIImage(named: "AS")
        
        // setup constrains
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -75)
            ])
        
    }
    
    func configureStopButton() {
        // add stop button to view
        view.addSubview(stopButton)
       // setup constrains
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 30)
        ])
    }
    func configureRestartButton() {
       // add restart button
        view.addSubview(restartButton)
        // setup constrains
        NSLayoutConstraint.activate([
            restartButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 12),
            restartButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            restartButton.widthAnchor.constraint(equalToConstant: 115),
            restartButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
        
    }
    
    func configureRulesButton() {
        // add rules button
        view.addSubview(rulesButton)
       // setup constrains
        NSLayoutConstraint.activate([
            rulesButton.topAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 12),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50)
            ])
        
    }
    
    
}
