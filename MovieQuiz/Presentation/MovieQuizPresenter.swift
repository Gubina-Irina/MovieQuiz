//
//  MovieQuizPresenter.swift
//  MovieQuiz
//
//  Created by Irina Gubina on 12.04.2025.
//

import UIKit

final class MovieQuizPresenter {
    let questionsAmount: Int = 10
    private var currentQuestionIndex: Int = 0
    var currentQuestion: QuizQuestion?
    weak var viewController: MovieQuizViewController?
    
    func isLastQuestion() -> Bool {
        currentQuestionIndex == questionsAmount - 1
    }
    
    func resetQuestionIndex() {
        currentQuestionIndex = 0
    }
    
    func switchToNextQuestion() {
        currentQuestionIndex += 1
    }
    
     func convert(model: QuizQuestion) -> QuizStepViewModel {
        return QuizStepViewModel(
            image: UIImage(data: model.image) ?? UIImage(),
            question: model.text,
            questionNumber: "\(currentQuestionIndex + 1)/\(questionsAmount)")
    }
    
    func yesButtonClicked() {
        checkAnswer(givenAnswer: true)
    }
    
    func noButtonClicked() {
            checkAnswer(givenAnswer: false)
        }
    
    private func checkAnswer(givenAnswer: Bool) {
        guard let currentQuestion = currentQuestion else { return }
        viewController?.setAnswerButtonsState(isEnabled: false)
        viewController?.showAnswerResult(isCorrect: givenAnswer == currentQuestion.correctAnswer)
    }
}
