//
//  InformationVC.swift
//  2025_06_24v1
//
//  Created by iKame Elite Fresher 2025 on 24/6/25.
//

import UIKit
protocol InformationDelegate: AnyObject{
    func update(_ result: Information)
}
class InformationVC: UIViewController {
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var changColorBtn: UIButton!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var lastName: UITextField!
    var firstNameText: String = ""
    var lastNameText: String = ""
    var heightText: String = ""
    var weightText: String = ""
    var genderText: String = ""
    weak var delegate: InformationDelegate?
//    @IBOutlet weak var firstName: UIView!
//    @IBOutlet weak var updateButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Information"
        
        //        validateInput()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
//        print("")
        validateInput()
        for textField in [firstName, lastName, height, weight]{
            textField?.addTarget(self, action: #selector(textFieldChanged), for:.editingChanged)
        }
        gender.addTarget(self, action: #selector(textFieldChanged), for:.valueChanged)
        firstName.text = firstNameText
        
    }
    func validateInput(){
        let firstName = firstName.text ?? ""
        let lastName = lastName.text ?? ""
        let height = height.text ?? ""
        let weight = weight.text ?? ""
        let genderIndex = gender.selectedSegmentIndex
        let genderTitle = gender.titleForSegment(at: genderIndex) ?? ""
        if(!firstName.isEmpty && !lastName.isEmpty && !height.isEmpty &&
           !weight.isEmpty && !genderTitle.isEmpty){
            changColorBtn.backgroundColor = .primary
        }else{
            changColorBtn.backgroundColor = .neutral3
        }

    }
    @objc func textFieldChanged(_ sender: Any){
        validateInput()
    }
    @IBAction func updateButton(_ sender: UIButton) {
        let firstName = firstName.text ?? ""
        let lastName = lastName.text ?? ""
        let height = height.text ?? ""
        let weight = weight.text ?? ""
        let genderIndex = gender.selectedSegmentIndex
        let genderTitle = gender.titleForSegment(at: genderIndex) ?? ""
        let fullName = "\(firstName) \(lastName)";
//        let info = Information(fullName, gender, height, weight)
        if let heightValue = Double(height), let weightValue = Double(weight){
            print("da unwraped duoc roi")
            let heightValueInMeters = heightValue / 100
            let bmi = Double(weightValue/(heightValueInMeters * heightValueInMeters))
            let info = Information(fullName: fullName, gender: genderTitle, height: heightValue, weight: weightValue, bmi: bmi)
            print(info.height)
            print(info.bmi)
            delegate?.update(info)
            print(info)
            navigationController?.popViewController(animated: true)
        }
        
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
