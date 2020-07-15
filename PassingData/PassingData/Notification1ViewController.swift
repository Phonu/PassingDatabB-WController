//
//  Notification1ViewController.swift
//  PassingData
//
//  Created by mac admin on 05/07/20.
//  Copyright © 2020 Kunal. All rights reserved.
//

import UIKit

class Notification1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(self, selector: #selector(abcd), name: Notification.Name("changeColor"), object: nil)
    }
    
    @objc func abcd () {
        self.view.backgroundColor = .red
    }
    

}
