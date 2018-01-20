import UIKit

class BaseViewController: UIViewController {

    @IBAction func startDetailsView(_ sender: UIButton) {
        self.navigationController?.pushViewController(DetailsViewController.controller, animated: true)
    }

    @IBAction func startScroolView(_ sender: UIButton) {
        self.navigationController?.pushViewController(ScrollViewController.controller, animated: true)
    }
}




