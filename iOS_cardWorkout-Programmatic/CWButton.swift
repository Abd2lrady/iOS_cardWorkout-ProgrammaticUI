//
//  CWButton.swift
//  iOS_cardWorkout-Programmatic
//
//  Created by Abdelrady on 10/31/20.
//  Copyright © 2020 Abdelrady. All rights reserved.
//

import UIKit

class CWButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String){
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
        configure()
    }
        
    func configure(){
        layer.cornerRadius = 12
        titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }
    


}
