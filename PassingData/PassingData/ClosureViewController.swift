//
//  ClosureViewController.swift
//  PassingData
//
//  Created by mac admin on 19/06/20.
//  Copyright © 2020 Kunal. All rights reserved.
//

import UIKit

class ClosureViewController: UIViewController {
    
    typealias completionHandler = (String) -> Void
    var completion:completionHandler?
    
    @IBOutlet weak var closureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func previousViewController(_ sender: Any) {
        let value:String = "ClosureValue"
        guard let completionBlock = completion else { return }
        completionBlock(value )
        self.navigationController?.popViewController(animated: true)
    }
    
    func closureFunc(value:String) {
        print("closureFunc")
        closureLabel.text = value
        print(value)
    }

}
