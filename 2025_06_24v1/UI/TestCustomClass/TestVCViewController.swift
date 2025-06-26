//
//  TestVCViewController.swift
//  2025_06_24v1
//
//  Created by iKame Elite Fresher 2025 on 25/6/25.
//

import UIKit

class TestVCViewController: UIViewController {

    @IBOutlet weak var lastNamev: InformationV!
    @IBOutlet weak var firstNamev: InformationV!
    override func viewDidLoad() {
        super.viewDidLoad()
//        let informationV = InformationV()
        
        lastNamev.configure(label: "Last name", placeholder: "Enter last name")
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
