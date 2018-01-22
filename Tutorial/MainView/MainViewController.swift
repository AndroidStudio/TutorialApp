import UIKit

class MainViewController: UIViewController {

    @IBAction func startDetailsView(_ sender: UIButton) {
        pushController(controller: UIViewController.detailsViewController(getData: { () -> (title: String, description: String) in
            return ("Launch", "Copyright © 2018 Witchcraft-11. All rights reserved. Copyright © 2018 Witchcraft-11. All rights reserved.")
        }))

//        pushController(controller: UIViewController.detailsViewController2(getData: { (title, description) in
//            title = "a"
//        }))
    }

    @IBAction func startScroolView(_ sender: UIButton) {
        pushController(controller: UIViewController.scrollViewController())
    }

    @IBAction func startTableView(_ sender: UIButton) {
        pushController(controller: UIViewController.tableViewController())
    }

    @IBAction func startPageViewController(_ sender: UIButton) {
        pushController(controller: UIViewController.pageViewController())
    }
}




