//
//  NotificationViewController.swift
//  PassingData
//
//  Created by mac admin on 26/06/20.
//  Copyright © 2020 Kunal. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {

    @IBOutlet weak var viewLabel: UILabel!
    var strVal = "NotificationValue"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func notifyViewController(_ sender: Any) {
        NotificationCenter.default.post(name: ViewController.notificationName, object: strVal)
        self.navigationController?.popViewController(animated: true)
//            dismiss(animated: true, completion: nil)
    }
    
    deinit {
      print("deinit notification")
      NotificationCenter.default.removeObserver(self, name: ViewController.notificationName, object: nil)
    }

}
