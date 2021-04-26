//
//  ViewController.swift
//  Evidencia 2
//
//  Created by user167237 on 4/13/21.
//  Copyright © 2021 user167237. All rights reserved.
//

import UIKit
class ViewController: UIViewController  {
    
    
    override func viewDidLoad() {
          super.viewDidLoad()
           let TapGesture = UITapGestureRecognizer()
           self.view.addGestureRecognizer(TapGesture)
        TapGesture.addTarget(self, action: #selector(tapclick))
        
    }
    
    @objc func tapclick()
    {
        print("Click tap gesture on screen")
    }

    @IBAction func clicktapgestureimage(_ sender: Any) {
        print("Click image Tap gesture ")
    }
     
    
    /*override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
         UIView.animate(withDuration: 2.0,delay: 0.3, options: [], animations:{
            self.clicktapgestureimage.(_sender: Any)}, completion: nil)
    }*/
        
}














