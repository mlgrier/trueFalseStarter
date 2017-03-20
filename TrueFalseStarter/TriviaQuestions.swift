//
//  TriviaQuestions.swift
//  TrueFalseStarter
//
//  Created by Marco Grier on 3/19/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import UIKit
import GameKit

var indexOfSelectedQuestion: Int = 0

struct TriviaQuestions {
    let trivia: [[String : String]] = [
        ["Question": "Only female koalas can whistle", "Answer": "False"],
        ["Question": "Blue whales are technically whales", "Answer": "True"],
        ["Question": "Camels are cannibalistic", "Answer": "False"],
        ["Question": "All ducks are birds", "Answer": "True"]
    ]
    
    func displayQuestion() {
        indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextInt(upperBound: trivia.count)
        let questionDictionary = trivia[indexOfSelectedQuestion]
        questionField.text = questionDictionary["Question"]
        playAgainButton.isHidden = true
    }
}
