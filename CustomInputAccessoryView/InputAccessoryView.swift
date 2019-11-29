//
//  InputAccessoryView.swift
//  Common
//
//  Created by Atul Agrawal on 11/27/19.
//  Copyright © 2019 MakeMyTrip. All rights reserved.
//

import Foundation
import UIKit

protocol InputAccessoryViewProtocol: class {
    func didTapDoneButton()
}

class InputAccessoryView: UIView {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var viewWidthConstraint: NSLayoutConstraint!
    
    weak var delegate: InputAccessoryViewProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewWidthConstraint.constant = UIScreen.main.bounds.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        addDefaultShadow()
    }
    
    func configureView(_ message: String?) {
        messageLabel.text = message
    }
    
    @IBAction func didTapDoneButton(_ sender: Any) {
        delegate?.didTapDoneButton()
    }
}

extension UIView {
    func addDefaultShadow() {
        
        self.layer.masksToBounds = false
        
        // shadow
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.layer.shadowOpacity = 0.2
        self.layer.shadowRadius = 2.0
        
        self.layer.shadowPath = UIBezierPath(roundedRect: layer.bounds, cornerRadius: 4.0).cgPath
        
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
    }
}
