//
//  TableViewController.swift
//  Slide Menu Delegate
//
//  Created by dohien on 7/31/18.
//  Copyright © 2018 dohien. All rights reserved.
//

import UIKit
protocol TableViewControllerDelegate: class {
    func changeViewController(indexPath: IndexPath)
}
class TableViewController: UITableViewController {
    weak var delegate: TableViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.changeViewController(indexPath: indexPath)
    }

}
