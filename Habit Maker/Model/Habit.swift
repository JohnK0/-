//
//  Habit.swift
//  Habit Maker
//
//  Created by John Kim on 12/15/20.
//

import Foundation

struct Habit {
    var name: String
    var measurementType: String
    var trajectoryType: String
    var streak: Int = 0
    var total: Int = 0
    var start: Int = 0
    var end: Int = 0
    
    init (_ name: String, _ measurementType: String, _ trajectoryType: String) {
        self.name = name
        self.measurementType = measurementType
        self.trajectoryType = trajectoryType
    }
}
