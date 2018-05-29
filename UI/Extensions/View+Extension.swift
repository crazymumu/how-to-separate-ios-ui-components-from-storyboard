//
//  View+Extension.swift
//  UI
//
//  Created by Mu-Sheng Wu on 2017-12-11.
//  Copyright © 2017 Mu-Sheng Wu. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    func initFromXib(_ xibName: String) {
        initFromXib(xibName, target: self, owner: self)
    }
    
    func initFromXib(_ xibName: String, owner: UIViewController) {
        initFromXib(xibName, target: owner.view, owner: owner)
    }
    
    private func initFromXib(_ xibName: String, target: UIView, owner: Any?) {
        if let view = Bundle.main.loadNibNamed(xibName, owner: owner, options: nil)?.first as? UIView {
            target.addSubview(view)
            view.frame = target.bounds
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
    }
}
