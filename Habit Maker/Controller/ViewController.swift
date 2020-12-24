//
//  ViewController.swift
//  습관
//
//  Created by John Kim on 12/13/20.
//

import UIKit

class ViewController: UIViewController {
    
    var name: String = ""
    var measurementType = ""
    var trajectoryType = ""
    var habitBrain = HabitBrain()
    
    @IBOutlet weak var habitNameTextBox: UITextField!
    @IBOutlet weak var habitTrajectoryTypes: UISegmentedControl!
    @IBOutlet weak var habitMeasurementTypes: UISegmentedControl!
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
    
    @IBAction func edittedHabitName(_ sender: UITextField) {
        name = sender.text!
    }
    
    @IBAction func edittedHabitTypes(_ sender: UISegmentedControl) {
        let habitType = String(describing: sender.self)
        if String(describing: sender.self) == "habitMeasurementTypes" {
            measurementType = habitType
            return
        }
        trajectoryType = habitType
    }
    
    @IBAction func submittedHabit(_ sender: UIButton) {
        if (name != "" || measurementType != "" || trajectoryType != "") {
            habitBrain.addNewHabit(name, measurementType, trajectoryType)
        }
    }
    

}

