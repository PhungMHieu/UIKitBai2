//
//  ListUserVC.swift
//  2025_06_24v1
//
//  Created by iKame Elite Fresher 2025 on 26/6/25.
//

import UIKit

class ListUserVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = listUser.dequeueReusableCell(withIdentifier: "UserTableViewCell") as! UserTableViewCell
//        cell.name.text = "JohnWick"
//        cell.height.title.text = "H:"
//        cell.height.res.text = "180"
//        cell.weight.res.text = "80"
        cell.configre(data: data[indexPath.row])
        cell.delegate = self
//        cell.height.res.text = String(data[indexPath.row].height)
//        cell.weight.res.text = String(data[indexPath.row].weight)
//        UserMeasure userMeasure = UserMeasure(title: <#T##String#>, res: <#T##String#>)
//        cell.height.config(data: )
        return cell
    }
    @IBOutlet weak var listUser: UITableView!
//    var data: [Information] =
    var data: [Information] = [
        Information(firstName: "Minh", lastName: "Hieu", gender: "Nam", height: 170, weight: 65, bmi: 22.5, fullName: "Minh Hieu"),
        Information(firstName: "Anh", lastName: "Lan", gender: "Nữ", height: 160, weight: 50, bmi: 19.5, fullName: "Anh Lan"),
        Information(firstName: "Tuấn", lastName: "Lan", gender: "Nữ", height: 160, weight: 50, bmi: 19.5, fullName: "Anh Lan"),
        Information(firstName: "Hùng", lastName: "Lan", gender: "Nữ", height: 160, weight: 50, bmi: 19.5, fullName: "Anh Lan"),
        Information(firstName: "Văn", lastName: "Lan", gender: "Nữ", height: 160, weight: 50, bmi: 19.5, fullName: "Anh Lan")
    ]
//    var data: [Information] =
//    []
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "List"
        //        listUser.dataSource = self
        //        listUser.delegate = self
        let nib = UINib(nibName: "UserTableViewCell", bundle: nil)
        listUser.register(nib, forCellReuseIdentifier:  "UserTableViewCell")
        listUser.delegate = self
        listUser.dataSource = self
        print(self.data.count)
        // Do any additional setup after loading the view.
    }
    
    
}
extension ListUserVC : ListUserDelegate{
    func next(in cell : UserTableViewCell){
        if let indexPath = listUser.indexPath(for: cell){
            let item = data[indexPath.row]
            print("\(item.fullName)")
            let profileVC = ProfileVC()
            
            profileVC.configure(data: item)
            navigationController?.pushViewController(profileVC, animated: true)
        }
    }
}
