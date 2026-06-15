//
//  HabitData.swift
//  Habit-Tracking-Test-App
//
//  Created by Леонід Іванов on 13.06.2026.
//

import Foundation

struct Habit: Identifiable, Codable, Equatable {
    var id = UUID()
    let title: String
    let description: String
    var counter: Int
}
