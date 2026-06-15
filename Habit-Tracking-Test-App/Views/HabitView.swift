//
//  HabitView.swift
//  Habit-Tracking-Test-App
//
//  Created by Леонід Іванов on 15.06.2026.
//

import SwiftUI

struct HabitView: View {
    var localHabit: Habit
    
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
        }
    }
}



#Preview {
    HabitView(localHabit: .init(title: "test", description: "test", counter: 1))
}
