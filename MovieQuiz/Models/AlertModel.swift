//
//  AlertPresenter.swift
//  MovieQuiz
//
//  Created by Irina Gubina on 13.03.2025.
//

import Foundation

struct AlertModel {
    let title: String
    let message: String
    let buttonText: String
    let completion: (() -> Void)?
}
