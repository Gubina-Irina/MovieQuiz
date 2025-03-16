//
//  StatisticServiceProtocol.swift.swift
//  MovieQuiz
//
//  Created by Irina Gubina on 15.03.2025.
//

import Foundation

protocol StatisticServiceProtocol {
    var gamesCount: Int { get }
    var bestGame: GameResult { get }
    var totalAccuracy: Double { get }
    
    func store(correct count: Int, total amount: Int)
}
