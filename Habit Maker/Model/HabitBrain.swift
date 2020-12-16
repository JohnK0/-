//
//  HabitBrain.swift
//  Habit Maker
//
//  Created by John Kim on 12/15/20.
//

import Foundation

struct HabitBrain {
    let goalTypes:[String] = ["Reduce", "Increase", "Stop", "Do"]
    var habits = [String:Habit]()
    
    mutating func addToStreak(habitName: String, amount: Int) {
        habits[habitName]!.streak += amount
        self.addToTotal(habitName, amount)
    }
    mutating func brokeStreak(habitName: String) {
        habits[habitName]!.streak = 0
    }
    mutating func addToTotal(_ habitName: String, _ amount: Int) {
        habits[habitName]!.total += amount
    }
}
