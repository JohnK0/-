//
//  HabitBrain.swift
//  Habit Maker
//
//  Created by John Kim on 12/15/20.
//

import Foundation

struct HabitBrain {
    var habits = [String:Habit]()
    let habitMeasurementTypes: [String] = ["Hours", "Days", "Weeks", "Cups", "Times"]
    let habitTrajectoryTypes: [String] = ["Decreasing", "Increasing"]
    
    mutating func addNewHabit(_ name: String, _ measurementType: String, _ trajectoryType: String) {
        let habit = Habit(name, measurementType, trajectoryType)
        habits[habit.name] = habit
    }
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
