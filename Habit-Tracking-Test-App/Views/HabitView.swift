//
//  HabitView.swift
//  Habit-Tracking-Test-App
//
//  Created by Леонід Іванов on 15.06.2026.
//

import SwiftUI

struct HabitView: View {
    var localHabit: Habit
    var habits: HabitManager
    
    var body: some View {
        HStack() {
            VStack(alignment: .leading) {
                Text(localHabit.title)
                    .font(.headline)
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text("\(localHabit.counter)")
                    .font(.headline)
                    .foregroundColor(.primary)
            }
            Stepper {
                Text("")
            } onIncrement: {
                if let index = habits.habits.firstIndex(of: localHabit) {
                    var updatedHabit = localHabit
                    updatedHabit.counter += 1
                    habits.habits[index] = updatedHabit
                }
            } onDecrement: {
                if let index = habits.habits.firstIndex(of: localHabit) {
                    if localHabit.counter > 0 {
                        var updatedHabit = localHabit
                        updatedHabit.counter -= 1
                        habits.habits[index] = updatedHabit
                    }
                }
            }
            .labelsHidden()
        }
    }
}



#Preview {
    HabitView(localHabit: .init(title: "test", description: "test", counter: 1), habits: HabitManager())
}
