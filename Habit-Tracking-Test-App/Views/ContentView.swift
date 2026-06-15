//
//  ContentView.swift
//  Habit-Tracking-Test-App
//
//  Created by Леонід Іванов on 13.06.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var habits = HabitManager()
    @State private var showingSheet = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(habits.habits) { habit in
                    HabitView(localHabit: habit, habits: habits)
                        .background(
                    NavigationLink(destination: HabitInsideView(habit: habit)) {
                        EmptyView()
                    }
                        .opacity(0)
                    )
                }
                .onDelete { indexSet in
                    habits.habits.remove(atOffsets: indexSet)
                }
            }
            .toolbar {
                Button() {
                    showingSheet.toggle()
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingSheet) {
                HabitAdd(habits: habits)
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
