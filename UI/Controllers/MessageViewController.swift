//
//  MessageViewController.swift
//  UI
//
//  Created by Mu-Sheng Wu on 2017-12-20.
//  Copyright © 2017 Mu-Sheng Wu. All rights reserved.
//

import Foundation
import UIKit

class MessageViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func loadView() {
        self.initFromXib("MessageViewController")
    }
    
    @IBAction func clickDismiss(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
