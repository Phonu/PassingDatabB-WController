//
//  FourthViewController.swift
//  PassingData
//
//  Created by mac admin on 09/07/20.
//  Copyright © 2020 Kunal. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ThirdViewController
        destination.tempString = "Third Screen"
    }



}
