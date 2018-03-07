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
    func initFromXib(xibName: String) {
        initFromXib(xibName: xibName, target: self, owner: self)
    }
    
    func initFromXib(xibName: String, owner: UIViewController) {
        initFromXib(xibName: xibName, target: owner.view, owner: owner)
    }
    
    private func initFromXib(xibName: String, target: UIView, owner: Any?) {
        if let view = Bundle.main.loadNibNamed(xibName, owner: owner, options: nil)?.first as? UIView {
            target.addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
            
            target.addConstraints(NSLayoutConstraint.constraints(
                withVisualFormat: "V:|-0-[view]-0-|",
                options: NSLayoutFormatOptions(rawValue: 0),
                metrics: nil,
                views: ["view": view])
            )
            
            target.addConstraints(NSLayoutConstraint.constraints(
                withVisualFormat: "H:|-0-[view]-0-|",
                options: NSLayoutFormatOptions(rawValue: 0),
                metrics: nil,
                views: ["view": view])
            )
        }
    }
}
