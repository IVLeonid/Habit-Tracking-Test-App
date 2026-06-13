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
                Text("some information")
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
    }
}

#Preview {
    ContentView()
}
