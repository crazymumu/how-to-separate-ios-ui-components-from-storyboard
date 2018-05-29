//
//  ViewController+Extension.swift
//  UI
//
//  Created by Mu-Sheng Wu on 2017-12-20.
//  Copyright © 2017 Mu-Sheng Wu. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    func initFromXib(_ xibName: String) {
        self.view = UIView(frame: UIScreen.main.nativeBounds)
        self.view.initFromXib(xibName, owner: self)
    }
}
