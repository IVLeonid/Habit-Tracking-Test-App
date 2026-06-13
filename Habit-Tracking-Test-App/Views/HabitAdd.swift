//
//  HabitAdd.swift
//  Habit-Tracking-Test-App
//
//  Created by Леонід Іванов on 13.06.2026.
//

import SwiftUI

struct HabitAdd: View {
    @State private var habitName = "Name of habit"
    @State private var habitDescription = "Description of habit"
    var habits: HabitManager
    
    var body: some View {
        VStack {
            TextField("Name of habit", text: $habitName)
            TextField("Description of habit", text: $habitDescription)
        }
    }
}


#Preview {
    HabitAdd(habits: HabitManager())
}
