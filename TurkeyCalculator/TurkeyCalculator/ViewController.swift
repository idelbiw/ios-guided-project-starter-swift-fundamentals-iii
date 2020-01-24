//
//  ViewController.swift
//  TurkeyCalculator
//
//  Created by Paul Solt on 6/3/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Outlets
    
    @IBOutlet var turkeyWeightTextField: UITextField!
    @IBOutlet var cookTimeTextField: UITextField!
    @IBOutlet var metricButton: UIButton!
    @IBOutlet var cookTimeInHoursLabel: UILabel!
    
    // Actions
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        guard let unwrappedTurkeyWeight = turkeyWeightTextField.text else {
            cookTimeTextField.text = "Nothing was entered"
            print("Nothing was entered")
            return}
        guard let turkeyWeight = Double(unwrappedTurkeyWeight) else {
            cookTimeTextField.text = "invalid amount entered"
            cookTimeInHoursLabel.text = ""
            print("invalid amount entered")
            return}
        
        let numberFormatter = NumberFormatter()
        numberFormatter.maximumFractionDigits = 2
        
        let result = turkeyWeight * 20
        let resultInHours = result / 60
        let hourString = numberFormatter.string(for: resultInHours)!
        cookTimeTextField.text = "\(result) minutes"
        cookTimeInHoursLabel.text = "\(hourString) hours"
        
        
    }
    
    @IBAction func metricButtonPressed(_ sender: Any) {
        
    }
    
    // Helper functions
    
    
}
