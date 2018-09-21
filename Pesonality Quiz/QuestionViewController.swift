//
//  QuestionViewController.swift
//  Pesonality Quiz
//
//  Created by student on 18.09.2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    var questionIndex = 0

    @IBOutlet weak var singleStackView: UIStackView!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }
    func updateUI(){
    singleStackView.isHidden = true
    multipleStackView.isHidden = true
    rangedStackView.isHidden = true
        
    navigationItem.title = "Вопрос № \(questionIndex + 1)"
        
    let currentQuestion = questions[questionIndex]
        
        switch currentQuestion.type {
        case .single:
            singleStackView.isHidden = false
        case .multiple:
            multipleStackView.isHidden = false
        case .ranged:
            rangedStackView.isHidden = false
        }
    }
}
