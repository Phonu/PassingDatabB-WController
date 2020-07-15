//
//  SegueViewController.swift
//  PassingData
//
//  Created by mac admin on 19/06/20.
//  Copyright © 2020 Kunal. All rights reserved.
//

import UIKit

class SegueViewController: UIViewController {
    
    @IBOutlet weak var segueLabel: UILabel!
    var name:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        segueLabel.text = name
    }
    
    @IBAction func previousController(_ sender: Any) {
    }
    
    @IBAction func unwindToSecondScreen(_ sender: UIStoryboardSegue) {
             
    }
    


}
