//
//  ViewController.swift
//  Quizzler App
//
//  Created by Evgeniy Zelinskiy on 18.01.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrainModel = QuizBrainModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateQuestionUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender == trueButton
        let isRightAnswer = quizBrainModel.checkAnswer(userAnswer)
        
        sender.backgroundColor = isRightAnswer ? UIColor.green : UIColor.red
        
        quizBrainModel.nextQuestion()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.25) {
            self.updateQuestionUI()
        }
    }
    
    func updateQuestionUI() {
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        questionLabel.text = quizBrainModel.getQuestionText()
        scoreLabel.text = "Score: \(quizBrainModel.getScoreValue())"
        progressBar.progress = quizBrainModel.getProgressValue()
    }
}

