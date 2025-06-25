//
//  Information.swift
//  2025_06_24v1
//
//  Created by iKame Elite Fresher 2025 on 24/6/25.
//
import Foundation

class Information{
    //    var fullName: String
    var firstName: String
    var lastName: String
    var gender: String
    var height: Double
    var weight: Double
    var bmi: Double
    var fullName: String
    //    {
    //        let heightInMeters = Double(height)/100
    //        return Double(weight)/(heightInMeters*heightInMeters)
    //    }
    init(firstName: String, lastName: String, gender: String, height: Double, weight: Double, bmi: Double, fullName: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.height = height
        self.weight = weight
        self.bmi = bmi
        self.fullName = fullName
    }
}
