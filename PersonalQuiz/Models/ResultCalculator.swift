//
//  ResultCalculator.swift
//  PersonalQuiz
//
//  Created by Ермоленко Константин on 13.02.2020.
//  Copyright © 2020 Alexey Efimov. All rights reserved.
//

class ResultCalculator {
    static func CalculateResult(of answers: [Answer]) -> AnimalType {
        
        var totalScores: [AnimalType: Int] = [:]
        
        for answer in answers {
            let score = totalScores[answer.type, default: 0]
            totalScores.updateValue(score + 1, forKey: answer.type)
        }
        let mostScores = totalScores.max { $0.value < $1.value }
        
        return mostScores?.key ?? AnimalType.cat
    }
}
