//
//  QuizBrainModel.swift
//  Quizzler App
//
//  Created by Evgeniy Zelinskiy on 19.01.2024.
//

import Foundation

struct QuizBrainModel {
    var questionNumber = 0
    var scoreValue = 0
    let quizQuestions = [
        QuestionModel(text: "Bats are blind.", answer: false),
        QuestionModel(text: "A dog sweats by panting its tongue.", answer: false),
        QuestionModel(text: "It takes a sloth two weeks to digest a meal.", answer: true),
        QuestionModel(text: "The largest living frog is the Goliath frog of West Africa.", answer: true),
        QuestionModel(text: "An ant can lift 1,000 times its body weight.", answer: false),
        QuestionModel(text: "Galapagos tortoises sleep up to 16 hours a day.", answer: true),
        QuestionModel(text: "An octopus has seven hearts.", answer: false),
    ]
    
    mutating func checkAnswer(_ answer: Bool) -> Bool {
        let isRightAnswer = answer == quizQuestions[questionNumber].answer
        if isRightAnswer {
            scoreValue += 1
        }
        return isRightAnswer
    }
    
    mutating func nextQuestion() {
        if questionNumber < quizQuestions.count - 1 {
            questionNumber += 1
        } else {
            questionNumber = 0
            scoreValue = 0
        }
    }
    
    func getQuestionText() -> String {
        quizQuestions[questionNumber].text
    }
    
    func getProgressValue() -> Float {
        Float(questionNumber + 1) / Float(quizQuestions.count)
    }
    
    func getScoreValue() -> Int {
        scoreValue
    }
}
