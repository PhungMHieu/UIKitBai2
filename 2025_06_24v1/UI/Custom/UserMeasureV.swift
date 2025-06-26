//
//  UserMeasureV.swift
//  2025_06_24v1
//
//  Created by iKame Elite Fresher 2025 on 26/6/25.
//

import UIKit

class UserMeasureV: UIView {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var res: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadFromNib()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadFromNib()
    }
    
    override func layoutSubviews() {
        
    }
    
    private func loadFromNib() {
        let nib = UINib(nibName: "UserMeasureV", bundle: nil)
        let nibView = nib.instantiate(withOwner: self).first as! UIView
        
        addSubview(nibView)
        
        nibView.translatesAutoresizingMaskIntoConstraints = false
        nibView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        nibView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        nibView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        nibView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    func config(data: UserMeasure){
        title.text = data.title
        res.text = data.res
    }
}
