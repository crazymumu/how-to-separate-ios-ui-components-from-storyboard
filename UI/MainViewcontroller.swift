//
//  MainViewcontroller.swift
//  UI
//
//  Created by Mu-Sheng Wu on 2017-12-11.
//  Copyright © 2017 Mu-Sheng Wu. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func clickMessageVC(_ sender: Any) {
        let vc = MessageViewController()
        self.present(vc, animated: true, completion: nil)
    }
}
