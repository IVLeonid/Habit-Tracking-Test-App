//
//  HabitAdd.swift
//  Habit-Tracking-Test-App
//
//  Created by Леонід Іванов on 13.06.2026.
//

import SwiftUI

struct HabitAdd: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var habitName = ""
    @State private var habitDescription = ""
    var habits: HabitManager
    
    var body: some View {
        Form {
            TextField("Name of habit", text: $habitName)
            TextField("Description of habit", text: $habitDescription)
        }
        Button("Save") {
            habits.habits.append(Habit(title: habitName, description: habitDescription, counter: 0))
            dismiss()
        }
    }
}


#Preview {
    HabitAdd(habits: HabitManager())
}
