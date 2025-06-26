//
//  ProfileVC.swift
//  2025_06_24v1
//
//  Created by iKame Elite Fresher 2025 on 24/6/25.
//

import UIKit
class ProfileVC: UIViewController {

    @IBOutlet weak var gender: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    @IBOutlet weak var bmi: UILabel!
    @IBOutlet weak var UpdateButton: UIButton!
    @IBOutlet weak var fullName: UILabel!
    var firstName:String = ""
    var lastName:String = ""
    var fullNameText : String = ""
    var heightText : String = ""
    var weightText : String = ""
    var genderText : String = ""
    var ageText : String = ""
    var bmiText : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        navigationController?.navigationBar.titleTextAttributes=[
            .foregroundColor: UIColor.neutral1,
            .font: UIFont.boldSystemFont(ofSize: 20)
        ]
//        let informationVC = InformationVC()
        
//        informationVC?.up
        let backItem = UIBarButtonItem()
        gender.text = genderText
        age.text = ageText
        height.text = heightText
        weight.text = weightText
        fullName.text = fullNameText
        bmi.text = bmiText
        
        backItem.title = "Quay lại"
//            backItem.tintColor = .red  // tuỳ chỉnh màu
        navigationItem.backBarButtonItem = backItem
//        validateInput()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
//        for textField in [fullName, height, weight]{
//            
//        }
        validateInput()
    }
    func validateInput()->Bool{
        let fullName = fullName.text ?? "----"
        let height = height.text ?? ""
        let weight = weight.text ?? ""
        let genderTitle = gender.text ?? ""
        let bmi = bmi.text ?? "----"
        if(fullName != "----" && height != "--" &&
           weight != "--" && genderTitle != "--" && bmi != "----"){
            UpdateButton.setTitle("Update", for: .normal)
            return true
        }else{
            UpdateButton.setTitle("Add", for: .normal)
        }
        return false
    }
//    @objc func textFieldChanged(_ sender: Any){
//        validateInput()
//    }
    @IBAction func AddButton(_ sender: UIButton) {
//        let informationVC = InformationVC()
        let informationVC = InformationVC(nibName: "InformationVC", bundle: nil)
//        informationVC.delegate = self
        
        informationVC.onChangeResult = { [weak self] newResult in
            self?.gender.text = newResult.gender
            self?.fullName.text = newResult.fullName
            self?.height.text = String(newResult.height)
            self?.weight.text = String(newResult.weight)
            self?.bmi.text = String(Int(newResult.bmi))
            print("first name la \(newResult.firstName)")
            print("last name la \(newResult.lastName)")
            self?.firstName = newResult.firstName
            self?.lastName = newResult.lastName
        }
        if(validateInput()){
//            print(fullName.text ?? "Khong co test")
            informationVC.firstNameText = firstName
            informationVC.lastNameText = lastName
            informationVC.genderText = gender.text ?? ""
            informationVC.heightText = height.text ?? ""
            informationVC.weightText = weight.text ?? ""
            print("\(informationVC.firstNameText) đã được cập nhật")
//            informationVC.lastName.text = fullName.text ?? ""
//            for index in 0..<informationVC.gender.numberOfSegments{
//                if(informationVC.gender.titleForSegment(at: index) == gender.text){
//                    informationVC.gender.selectedSegmentIndex = index
//                    break
//                }
//            }
//            informationVC.height.text = height.text ?? ""
//            informationVC.weight.text = weight.text ?? ""
        }
        navigationController?.pushViewController(informationVC, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func configure(data: Information){
        fullNameText = data.fullName
        weightText = String(data.weight)
        heightText = String(data.height)
        bmiText = String(Int(data.bmi))
        genderText = data.gender
    }
}
//extension ProfileVC: InformationDelegate{
//    func update(_ result: Information) {
//        print("da nhan duoc thong tin update")
//        fullName.text = result.fullName
//        gender.text = result.gender
////        age.text = String(result.weight)
//        height.text = String(result.height)
//        weight.text = String(result.weight)
//        bmi.text = String(Int(result.bmi))
//    }
//}
