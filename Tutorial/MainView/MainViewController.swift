import UIKit

class MainViewController: UIViewController {

    @IBAction func startDetailsView(_ sender: UIButton) {
        pushController(type: DetailsViewController.self) { (detailsController) in
            detailsController.detailsTitle = "Custom Title"
        }
    }

    @IBAction func startScroolView(_ sender: UIButton) {
        pushController(type: ScrollViewController.self, sendData: nil)
    }

    @IBAction func startTableView(_ sender: UIButton) {
        pushController(type: TableViewController.self, sendData: nil)
    }

    @IBAction func startPageViewController(_ sender: UIButton) {
        pushController(type: PageViewController.self, sendData: nil)
    }
}




