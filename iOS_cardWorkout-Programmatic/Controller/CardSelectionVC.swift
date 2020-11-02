//
//  CardSelectionVC.swift
//  iOS_cardWorkout-Programmatic
//
//  Created by Abdelrady on 10/31/20.
//  Copyright © 2020 Abdelrady. All rights reserved.
//

import UIKit

class CardSelectionVC: UIViewController {
    
    var timer: Timer!
    
    let cardImageView = UIImageView()
    let stopButton = CWButton(backgroundColor: .red, title: "Stop!")
    let rulesButton = CWButton(backgroundColor: .blue, title: "Rules")
    let restartButton = CWButton(backgroundColor: .green, title: "Restart")
    let cards = cardsDeck.allCards

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureUI()
        startTimer()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        timer.invalidate()
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
        
        stopButton.addTarget(self, action: #selector(stopBtnTapped), for: .touchUpInside)
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
        
        restartButton.addTarget(self, action: #selector(restartBtnTapped), for: .touchUpInside)
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
        rulesButton.addTarget(self, action: #selector(rulesBtnTapped), for: .touchUpInside)
    }
    
    @objc func rulesBtnTapped(){
        present(RulesVC(),animated: true)
    }
    
    @objc func stopBtnTapped(){
        stopTimer()
    }
    
    @objc func restartBtnTapped(){
        stopTimer()
        startTimer()
    }
    
     func stopTimer(){
        timer.invalidate()
    }
    
    func startTimer(){
        timer = .scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(changeCard), userInfo: nil, repeats: true)
        
    }
    
    @objc func changeCard(){
        cardImageView.image = cards.randomElement() ?? UIImage()
    }
}
