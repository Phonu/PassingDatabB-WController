//
//  ViewController.swift
//  PassingData
//
//  Created by mac admin on 19/06/20.
//  Copyright © 2020 Kunal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SendMessageProtocol {
    
    @IBOutlet weak var viewLabel: UILabel!
    
//    typealias completionHandlerFor = (String) -> Void
//    var completionFor:completionHandlerFor?
    
    
    static let notificationName = Notification.Name(rawValue: "myNotificationName")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewContoller")
        NotificationCenter.default.addObserver(self, selector: #selector(receiveNotification(_:)), name: ViewController.notificationName, object: nil)
    }
    
    @objc func receiveNotification(_ notification: Notification) {
        if let abc = notification.object as? String {
            viewLabel.text = abc
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        print("appear")
    }

    @IBAction func passDataBWController(_ sender: Any) {
        
//        let vc = self.storyboard?.instantiateViewController(identifier: "closureViewController") as! ClosureViewController
//        vc.completion = { value in
//            self.viewLabel.text = value
//        }
        
//        let vc = storyboard?.instantiateViewController(identifier: "DelegateViewController") as! DelegateViewController
//        vc.sendDelegate = self
       
        
//        let vc = storyboard?.instantiateViewController(identifier: "NotificationViewController") as! NotificationViewController
        
//        vc.modalPresentationStyle = .fullScreen
//        self.navigationController?.pushViewController(vc, animated: true)

        
// self.completionFor = vc.closureFunc
//        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) { // in half a second...
//            print("Are we there yet?")
//            self.completionFor?("Kunal")
//        }
        
    }
    
    /* protocol method*/
    func sendMessageMethod(value:String) {
        print("delegate")
        viewLabel.text = value
    }
    
    /* when we need to pass data through Segue */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is SegueViewController {
            let vc = segue.destination as! SegueViewController
            vc.name = "Segueeeee"
        }
    }
    
    @IBAction func unwindToFirstScreen(_ sender: UIStoryboardSegue) {
        
    }
    
    
  
       
}


