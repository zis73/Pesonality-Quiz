//
//  QuizViewController.swift
//  Pesonality Quiz
//
//  Created by student on 18.09.2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    var responses: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calculatePersonalityResult()
    }

    func calculatePersonalityResult(){
        var frequenceOfAnswers = [AnimalType:Int]()
        
        let animalTypes = responses.map { $0.type }
        
        for animalTypes in animalTypes {
            frequenceOfAnswers[animalTypes] = (frequenceOfAnswers[animalTypes] ?? 0) + 1
        }
        let mostCommonAnswer = frequenceOfAnswers.sorted
        { $0.1 > $1.1}.first!.key
        
        resultAnswerLabel.text = "Вы - \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
    }
    
    @IBOutlet weak var resultAnswerLabel: UILabel!
    
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
