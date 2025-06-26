//
//  TestVCViewController.swift
//  2025_06_24v1
//
//  Created by iKame Elite Fresher 2025 on 25/6/25.
//

import UIKit

class TestVCViewController: UIViewController {

    @IBOutlet weak var weightv: InformationV!
    @IBOutlet weak var lastNamev: InformationV!
    @IBOutlet weak var firstNamev: InformationV!
    @IBOutlet weak var heightv: InformationV!
    
    @IBAction func addBtn(_ sender: UIButton) {
        var listUserVc = ListUserVC()
//        var weight: Double = Double(weightv.)
        
//        weightv.titleLabel.text = "weight"
//        weightv.textField.placeholder = "Kg"
        
//        lastNamev.configure(label: "Last name 234" , placeholder: "Enter last name")
        var firstName: String = firstNamev.textField.text ?? ""
        var lastName: String = lastNamev.textField.text ?? ""
        var height: Double = Double(heightv.textField.text ?? "") ?? 0
        var weight: Double = Double(weightv.textField.text ?? "") ?? 0
        var genderIndexPath: Int = gender.selectedSegmentIndex
        var gender: String = genderIndexPath == 0 ? "Male" : "Female"
        var bmi = (weight / ((height * height)/100_00))
        var fullName = "\(firstName) \(lastName)"
        
        var information: Information = Information(firstName: firstName, lastName: lastName, gender: gender, height: height, weight: weight, bmi: bmi, fullName: fullName)
        listUserVc.data.append(information)
        navigationController?.pushViewController(listUserVc, animated: true)
    }
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var genderTitle: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
//        let informationV = InformationV()
        
        lastNamev.configure(label: "Last name", placeholder: "Enter last name")
        weightv.configure(label: "Weight", placeholder: "Kg")
        heightv.configure(label: "Height", placeholder: "Cm")
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
