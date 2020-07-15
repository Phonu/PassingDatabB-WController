//
//  ThirdViewController.swift
//  PassingData
//
//  Created by mac admin on 01/07/20.
//  Copyright © 2020 Kunal. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet var thirdViewLabel:UILabel!
    var tempString = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func moveToMainView(_ sender: Any) {
        let abc = self.navigationController?.viewControllers[0] as! ViewController
        print(abc)
        self.navigationController?.popToViewController(abc, animated: true)
       
    }
    
    @IBAction func unwindToThidScreen(_ sender: UIStoryboardSegue) {
        thirdViewLabel.text = tempString
    }
    
 

}
