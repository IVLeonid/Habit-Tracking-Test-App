//
//  HabitManager.swift
//  Habit-Tracking-Test-App
//
//  Created by Леонід Іванов on 13.06.2026.
//
import SwiftUI

@Observable
class HabitManager {
    var habits: [Habit] {
        didSet {
            if let encoded = try? JSONEncoder().encode(habits) {
                UserDefaults.standard.set(encoded, forKey: "habits")
            }
        }
    }
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "habits") {
            if let decodedItems = try? JSONDecoder().decode([Habit].self, from: savedItems) {
                habits = decodedItems
                return
            }
        }
        
        habits = []
    }
}
