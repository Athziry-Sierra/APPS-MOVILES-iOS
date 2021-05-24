//
//  NoticiasVC.swift
//  Evidencia 2
//
//  Created by user167237 on 5/18/21.
//  Copyright © 2021 user167237. All rights reserved.
//

import UIKit

class NoticiasVC: UIViewController {

     var noticias:[String] = []
       var news:[String] = ["1","2"]
       
       override func viewDidLoad() {
           super.viewDidLoad()
           let inset = UIEdgeInsets(top: 60, left: 0, bottom: 0, right: 0);
           self.tableView.contentInset = inset
           self.tableView.scrollIndicatorInsets = inset
       
           LeerNoticias().getNoticias { (datos) in
               self.noticias = datos
               self.tableView.reloadData()
               
           }
       }
       
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if self.noticias.isEmpty == true{
            return self.noticias.count
        }else{
            return self.noticias.count
        }
    }
    
      override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        if self.noticias.isEmpty == true{
            celda.textLabel!.text = self.news[indexPath.row]
        }else{
            celda.textLabel!.text = self.noticias[indexPath.row]
        }
        
        print(self.news.count)
        return celda
    }
}
