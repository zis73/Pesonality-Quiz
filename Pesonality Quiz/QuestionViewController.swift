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

    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var multiLabel1: UILabel!
    @IBOutlet weak var multiLabel2: UILabel!
    @IBOutlet weak var multiLabel3: UILabel!
    @IBOutlet weak var multiLabel4: UILabel!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
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
    let currentAnswers = currentQuestion.answers
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple:
            updateMultipleStack(using: currentAnswers)
        case .ranged:
            updateRangeStack(using: currentAnswers)
        }
    }
    func updateSingleStack(using answers: [Answer]) {
        singleStackView.isHidden = false
    }
    func updateMultipleStack(using answers: [Answer]) {
        multipleStackView.isHidden = false
    }
    func updateRangeStack(using answers: [Answer]) {
        rangedStackView.isHidden = false
    }
}
