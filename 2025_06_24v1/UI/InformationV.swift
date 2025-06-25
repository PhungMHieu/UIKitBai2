//
//  InformationV.swift
//  2025_06_24v1
//
//  Created by iKame Elite Fresher 2025 on 25/6/25.
//

import UIKit

class InformationV: UIView {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var titleLabel: UILabel!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
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
            let nib = UINib(nibName: "InformationV", bundle: nil)
            let nibView = nib.instantiate(withOwner: self).first as! UIView
            
            addSubview(nibView)
            
            nibView.translatesAutoresizingMaskIntoConstraints = false
            nibView.topAnchor.constraint(equalTo: topAnchor).isActive = true
            nibView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
            nibView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
            nibView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        }
        func configure(label: String, placeholder: String) {
            titleLabel.text = label
            textField.placeholder = placeholder
        }
}
