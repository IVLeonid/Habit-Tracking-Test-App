//
//  HabitInsideView.swift
//  Habit-Tracking-Test-App
//
//  Created by Леонід Іванов on 15.06.2026.
//

import SwiftUI

struct HabitInsideView: View {
    var habit: Habit
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                HStack {
                    Text("Name")
                    Spacer()
                    Text(habit.title)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 15).fill(Color.blue.opacity(0.2)))
                
                HStack {
                    Text("Completed days")
                    Spacer()
                    Text("\(habit.counter)")
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 15).fill(Color.blue.opacity(0.2)))

                
                HStack {
                    Text("Description")
                    Spacer()
                    Text(habit.description)
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 15).fill(Color.blue.opacity(0.2)))

            }
        }
        .padding()
    }
}




#Preview {
    HabitInsideView(habit: .init(title: "test", description: "test", counter: 1))
}
