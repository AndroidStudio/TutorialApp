//
//  TableViewDelegate.swift
//  Tutorial
//
//  Created by Witchcraft-11 on 20.01.2018.
//  Copyright © 2018 Witchcraft-11. All rights reserved.
//

import UIKit

class MealAdapter: NSObject, UITableViewDataSource, UITableViewDelegate {

    private var dataSouce = [TableModel]()
    private var controller: TableViewController?

    init(controller: TableViewController) {
        super.init()
        self.controller = controller
        addData()
    }

    func addData() {
        dataSouce.append(TableModel(title: "Meal"))
        dataSouce.append(TableModel(title: "Launch"))
        dataSouce.append(TableModel(title: "Dish"))
        dataSouce.append(TableModel(title: "Meal"))
        dataSouce.append(TableModel(title: "Launch"))
        dataSouce.append(TableModel(title: "Dish"))
        dataSouce.append(TableModel(title: "Meal"))
        dataSouce.append(TableModel(title: "Launch"))
        dataSouce.append(TableModel(title: "Dish"))
        dataSouce.append(TableModel(title: "Meal"))
        dataSouce.append(TableModel(title: "Launch"))
        dataSouce.append(TableModel(title: "Dish"))
        dataSouce.append(TableModel(title: "Meal"))
        dataSouce.append(TableModel(title: "Launch"))
        dataSouce.append(TableModel(title: "Dish"))
        dataSouce.append(TableModel(title: "Meal"))
        dataSouce.append(TableModel(title: "Launch"))
        dataSouce.append(TableModel(title: "Dish"))
        dataSouce.append(TableModel(title: "Meal"))
        dataSouce.append(TableModel(title: "Launch"))
        dataSouce.append(TableModel(title: "Dish"))
        dataSouce.append(TableModel(title: "Meal"))
        dataSouce.append(TableModel(title: "Launch"))
        dataSouce.append(TableModel(title: "Dish"))
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSouce.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
    }

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let data: TableModel = dataSouce[indexPath.row]

        if let customCellView: CustomCellView = cell as? CustomCellView {
            customCellView.bindData(data: data)
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let data: TableModel = dataSouce[indexPath.row]

        controller?.pushController(controller: UIViewController.detailsViewController(title: data.title, description: data.description))
    }
}

