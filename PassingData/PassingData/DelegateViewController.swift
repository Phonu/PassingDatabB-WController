//
//  DelegateViewController.swift
//  PassingData
//
//  Created by mac admin on 26/06/20.
//  Copyright © 2020 Kunal. All rights reserved.
//

import UIKit


protocol SendMessageProtocol:class {
    func sendMessageMethod (value:String)
}

class DelegateViewController: UIViewController {
    
    weak var sendDelegate:SendMessageProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func previousView(_ sender: Any) {
        sendDelegate.sendMessageMethod(value: "DelegateMessage")
        self.navigationController?.popViewController(animated: true)
    }

}
