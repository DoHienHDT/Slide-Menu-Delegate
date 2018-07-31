//
//  ContainerVC.swift
//  Slide Menu Delegate
//
//  Created by dohien on 7/30/18.
//  Copyright © 2018 dohien. All rights reserved.
//

import UIKit
class ContainerVC: UIViewController, ViewControllerDelegate {
    

    @IBOutlet weak var mainContainerView: UIView!
    @IBOutlet weak var sideMenuViewController: UIView!
    @IBOutlet weak var coverButton: UIButton!
    @IBOutlet weak var leftMenuViewController: NSLayoutConstraint!
    
    weak var viewController: ViewController?
    weak var tableViewController: TableViewController?
    var isSideMenuOpen: Bool = false {
        didSet {
            leftMenuViewController.constant = isSideMenuOpen ? 0 : -sideMenuViewController.bounds.width
            coverButton.alpha = isSideMenuOpen ? 0.5 : 0
            UIView.animate(withDuration: 0.35, animations:{ self.view.layoutIfNeeded()})
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        isSideMenuOpen = false
        tableViewController?.delegate = viewController
        viewController?.delegate = self
        // Do any additional setup after loading the view.
    }
  
    func onclickButtonDelegate() {
        isSideMenuOpen = !isSideMenuOpen
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func clickButton(_ sender: UIButton) {
        isSideMenuOpen = !isSideMenuOpen
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "viewController" {
            let navi = segue.destination as? UINavigationController
            viewController = navi?.topViewController as? ViewController
        } else if segue.identifier == "tableview" {
            tableViewController = segue.destination as? TableViewController
        }
    }

}
