//
//  Foro.swift
//  Evidencia 2
//
//  Created by user167237 on 5/18/21.
//  Copyright © 2021 user167237. All rights reserved.
//

import UIKit

class Foro: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    
    @IBAction func Enviar(_ sender: UIButton) {
        let mText = textField.text
        textView.text = mText
    }
    
    
    func textFieldShouldReturn (textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
