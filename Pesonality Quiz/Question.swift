//
//  Question.swift
//  Pesonality Quiz
//
//  Created by student on 21.09.2018.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation
struct Question{
    var text: String
    var type: ResponseType
    var answers: [Answer]
}
enum ResponseType{
    case single, multiple, ranged
}
struct Answer{
    var text: String
    var type: AnimalType
}

enum AnimalType: Character{
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String{
        switch self {
        case .dog:
            return "Вы окружаете себя людьми, которые вам нравится и любите проводить время с друзьями"
        case .cat:
            return "Вы кот, найдите себе кошку"
        case .rabbit:
            return "Твоя любимая пища это морковь"
        case .turtle:
            return "Вы быстрее зайца"
            
        }
    }
}
var question: [Question] = [
    Question(text: "Какая пища вам нравится?",
             type: .single,
             answers: [
                Answer(text: "Мясо", type: .dog),
                Answer(text: "Рыба", type: .cat),
                Answer(text: "Морковь", type: .rabbit),
                Answer(text: "Капуста", type: .turtle)
        ]),
    Question(text: "Что вы любите делать?",
             type: .multiple,
             answers: [
                Answer(text: "Есть", type: .dog),
                Answer(text: "Спать", type: .cat),
                Answer(text: "Обниматься", type: .rabbit),
                Answer(text: "Плавать", type: .turtle)
        ]),
    Question(text: "Насколько вы любите поездки на машине?",
             type: .ranged,
             answers: [
                Answer(text: "Ненавижу", type: .cat),
                Answer(text: "Нервничаю", type: .rabbit),
                Answer(text: "Не замечаю", type: .turtle),
                Answer(text: "Обожаю", type: .dog)
        ])
]
