import UIKit

class MainViewController: UIViewController {

    @IBAction func startDetailsView(_ sender: UIButton) {
        pushController(controller: UIViewController.detailsViewController(title: "Title", description: "Description"))
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
    
    @IBAction func startCollectionView(_ sender: UIButton) {
        pushController(controller: UIViewController.collectionViewController())
    }
}




