//
//  QuestionFactoryDelegate.swift
//  MovieQuiz
//
//  Created by Irina Gubina on 13.03.2025.
//

import Foundation

protocol QuestionFactoryDelegate: AnyObject {
    func didReceiveNextQuestion(question: QuizQuestion?)
    func didLoadDataFromServer()
    func didFailToLoadData(with error: Error)
}
