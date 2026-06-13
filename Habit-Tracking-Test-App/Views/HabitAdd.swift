//
//  HabitAdd.swift
//  Habit-Tracking-Test-App
//
//  Created by Леонід Іванов on 13.06.2026.
//

import SwiftUI

struct HabitAdd: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var habitName = "Name of habit"
    @State private var habitDescription = "Description of habit"
    var habits: HabitManager
    
    var body: some View {
        Form {
            TextField("Name of habit", text: $habitName)
            TextField("Description of habit", text: $habitDescription)
        }
        Button("Save") {
            dismiss()
        }
    }
}


#Preview {
    HabitAdd(habits: HabitManager())
}
