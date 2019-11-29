//
//  ViewController.swift
//  CustomInputAccessoryView
//
//  Created by Atul Agrawal on 11/29/19.
//  Copyright © 2019 Atul Agrawal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: CustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textField.layer.borderColor = UIColor.black.cgColor
        textField.inputAccessoryView = textField.inputAccessoryBar("This is a long message which covers multiple lines to test auto layout functionality")
    }
    
    override func viewWillLayoutSubviews() {
        //textField.inputAccessoryView = textField.inputAccessoryBar("really long test message to cover multiple lines to test auto layout functionlaity with custom view having a label and a button")
    }
}
