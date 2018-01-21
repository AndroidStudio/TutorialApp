//
//  TableViewController.swift
//  Tutorial
//
//  Created by Witchcraft-11 on 20.01.2018.
//  Copyright © 2018 Witchcraft-11. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    override class func identifier() -> String { return "TableViewStoryboard" }

    @IBOutlet weak var tableView: UITableView!

    var mealAdapter: MealAdapter?

    override func viewDidLoad() {
        super.viewDidLoad()
        mealAdapter = MealAdapter(controller: self)

        tableView.dataSource = mealAdapter
        tableView.delegate = mealAdapter
    }

}
