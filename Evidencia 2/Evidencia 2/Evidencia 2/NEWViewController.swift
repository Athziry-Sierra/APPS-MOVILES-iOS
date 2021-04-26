//
//  NEWViewController.swift
//  Evidencia 2
//
//  Created by user167237 on 4/14/21.
//  Copyright © 2021 user167237. All rights reserved.
//

import UIKit
import WebKit
class NEWViewController: UIViewController ,WKUIDelegate{


     var webView: WKWebView!
       
       override func loadView() {
           let webConfiguration = WKWebViewConfiguration()
           webView = WKWebView(frame: .zero, configuration: webConfiguration)
           webView.uiDelegate = self
           view = webView
       }
       override func viewDidLoad() {
           super.viewDidLoad()
           
           let myURL = URL(string:"https://www.youtube.com/watch?v=nvUqnpicSd0")
           let myRequest = URLRequest(url: myURL!)
           webView.load(myRequest)
    }
}

