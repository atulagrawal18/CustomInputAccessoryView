//
//  CustomTextField.swift
//  CustomInputAccessoryView
//
//  Created by Atul Agrawal on 11/29/19.
//  Copyright © 2019 Atul Agrawal. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
    func inputAccessoryBar(_ message: String? = nil) -> UIView {
        let selectionView = Bundle.main.loadNibNamed("InputAccessoryView", owner: nil, options: nil)!.first as! InputAccessoryView
        selectionView.delegate = self
        selectionView.configureView(message)
        selectionView.layoutIfNeeded()
        
        return selectionView
    }

}

extension CustomTextField: InputAccessoryViewProtocol {
    func didTapDoneButton() {
        resignFirstResponder()
    }
}
