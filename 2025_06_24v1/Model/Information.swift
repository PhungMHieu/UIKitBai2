//
//  Information.swift
//  2025_06_24v1
//
//  Created by iKame Elite Fresher 2025 on 24/6/25.
//
import Foundation

class Information{
    var fullName: String
    var gender: String
    var height: Double
    var weight: Double
    var bmi: Double
//    {
//        let heightInMeters = Double(height)/100
//        return Double(weight)/(heightInMeters*heightInMeters)
//    }
    init(fullName: String, gender: String, height: Double, weight: Double, bmi: Double) {
        self.fullName = fullName
        self.gender = gender
        self.height = height
        self.weight = weight
        self.bmi = bmi
    }
}
