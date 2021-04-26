//
//  ViewController2.swift
//  Evidencia 2
//
//  Created by user167237 on 4/14/21.
//  Copyright © 2021 user167237. All rights reserved.
//

import Foundation
import UIKit

class ViewController2: UIViewController  {


 override func viewDidLoad() {
       super.viewDidLoad()
    
}
    @IBAction func btn_URL(_ sender: UIButton) {
    UIApplication.shared.open(URL(string: "https://www.youtube.com/watch?v=nvUqnpicSd0")! as URL, options:  [:] , completionHandler: nil)
}
    
}
