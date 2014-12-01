//
//  LabelAndTextInputTableViewCell.swift
//  HolidayGiftFormDemo
//
//  Created by Natasha Murashev on 12/1/14.
//  Copyright (c) 2014 NatashaTheRobot. All rights reserved.
//

import UIKit

class LabelAndTextInputTableViewCell: UITableViewCell {

    @IBOutlet weak private var titleLabel: UILabel!
    @IBOutlet weak private var textField: UITextField!

    func configure(#labelText: String, placeholderText: String, valueText: String?) {
        titleLabel.text = labelText
        textField.placeholder = placeholderText
        textField.text = valueText
    }
    
}
