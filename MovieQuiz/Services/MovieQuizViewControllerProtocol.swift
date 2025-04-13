//
//  MovieQuizViewControllerProtocol.swift
//  MovieQuiz
//
//  Created by Irina Gubina on 13.04.2025.
//
import Foundation

protocol MovieQuizViewControllerProtocol: AnyObject {
    func show(quiz step: QuizStepViewModel)
    func show(quiz result: QuizResultsViewModel)
    
    func highlightImageBorder(isCorrectAnswer: Bool)
    
    func showLoadingIndicator()
    func hideLoadingIndicator()
    func setAnswerButtonsState(isEnabled: Bool) 
    
    func showNetworkError(message: String)
}
