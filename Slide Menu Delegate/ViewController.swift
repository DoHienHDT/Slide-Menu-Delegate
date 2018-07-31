//
//  ViewController.swift
//  Slide Menu Delegate
//
//  Created by dohien on 7/30/18.
//  Copyright © 2018 dohien. All rights reserved.
//

import UIKit
protocol ViewControllerDelegate : class {
    func onclickButtonDelegate()
}
class ViewController: UIViewController {
    weak var delegate: ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func clickButton(_ sender: UIBarButtonItem) {
//        NotificationCenter.default.post(name: NotificationKey.menuClick, object: nil)
        delegate?.onclickButtonDelegate()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
//struct NotificationKey {
//    static let menuClick = NSNotification.Name.init("menuClick")
//}
