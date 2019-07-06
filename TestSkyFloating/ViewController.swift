//
//  ViewController.swift
//  TestSkyFloating
//
//  Created by Gustavo Evangelista on 05/07/2019.
//  Copyright © 2019 Gustavo. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textField = SkyFloatingLabelTextField(frame: CGRect(x: 50, y: 50, width: 200, height: 45))
        textField.placeholder = "Name"
        textField.title = "Your full name"
        self.view.addSubview(textField)
//
//        let lightGreyColor = UIColor(red: 197/255, green: 205/255, blue: 205/255, alpha: 1.0)
//        let darkGreyColor = UIColor(red: 52/255, green: 42/255, blue: 61/255, alpha: 1.0)
//        let overcastBlueColor = UIColor(red: 0, green: 187/255, blue: 204/255, alpha: 1.0)
//
//        let textField1 = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 100, width: 120, height: 45))
//        textField1.placeholder = "First name"
//        textField1.title = "Given name"
//        self.view.addSubview(textField1)
//
//        let textField2 = SkyFloatingLabelTextField(frame: CGRect(x: 150, y: 100, width: 120, height: 45))
//        textField2.placeholder = "Last name"
//        textField2.title = "Family name"
//
//        textField2.tintColor = overcastBlueColor // the color of the blinking cursor
//        textField2.textColor = darkGreyColor
//        textField2.lineColor = lightGreyColor
//        textField2.selectedTitleColor = overcastBlueColor
//        textField2.selectedLineColor = overcastBlueColor
//
//        textField2.lineHeight = 1.0 // bottom line height in points
//        textField2.selectedLineHeight = 2.0
//        self.view.addSubview(textField2)
        
        let overcastBlueColor = UIColor(red: 0, green: 187/255, blue: 204/255, alpha: 1.0)
//        let textFieldFrame = CGRect(x: 150, y: 150, width: 120, height: 45)
        
        let textField1 = SkyFloatingLabelTextFieldWithIcon(frame: CGRect(x: 50, y: 150, width: 120, height: 45), iconType: .font)
        textField1.placeholder = "Departure"
        textField1.title = "Flying from"
        textField1.iconFont = UIFont(name: "FontAwesome", size: 15)
        textField1.iconText = "\u{f072}" // plane icon as per https://fortawesome.github.io/Font-Awesome/cheatsheet/
        self.view.addSubview(textField1)
        
        let textField2 = SkyFloatingLabelTextFieldWithIcon(frame: CGRect(x: 150, y: 150, width: 120, height: 45))
        textField2.placeholder = "Arrival"
        textField2.title = "Flying to"
        textField2.tintColor = overcastBlueColor
        textField2.selectedTitleColor = overcastBlueColor
        textField2.selectedLineColor = overcastBlueColor
        
        // Set icon properties
        textField2.iconType = .font
        textField2.iconColor = .lightGray //UIColor.lightGrayColor()
        textField2.selectedIconColor = overcastBlueColor
        textField2.iconFont = UIFont(name: "FontAwesome", size: 15)
        textField2.iconText = "\u{f072}" // plane icon as per https://fortawesome.github.io/Font-Awesome/cheatsheet/
        textField2.iconMarginBottom = 4.0 // more precise icon positioning. Usually needed to tweak on a per font basis.
        textField2.iconRotationDegrees = 90 // rotate it 90 degrees
        textField2.iconMarginLeft = 2.0
        self.view.addSubview(textField2)
        
    }


}

