//
//  InputField.swift
//  UI
//
//  Created by Mu-Sheng Wu on 2017-12-08.
//  Copyright © 2017 Mu-Sheng Wu. All rights reserved.
//

import Foundation
import UIKit

@objc class InputField : UIView {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.initFromXib("InputField")
    }
}
