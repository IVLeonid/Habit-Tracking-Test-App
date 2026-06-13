//
//  ContentView.swift
//  Habit-Tracking-Test-App
//
//  Created by Леонід Іванов on 13.06.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var habits = HabitManager()
    var body: some View {
        NavigationStack {
            List {
                ForEach(habits.habits) { habit in
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
