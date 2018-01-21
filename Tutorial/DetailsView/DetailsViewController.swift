//
//  ConstrainsBasicsContoller.swift
//  Tutorial
//
//  Created by Witchcraft-11 on 19.01.2018.
//  Copyright © 2018 Witchcraft-11. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    override class func identifier() -> String { return "DetailsViewStoryboard" }

    public var detailsTitle: String? = "Default Title"

    @IBOutlet weak var titleLable: UITextField!

    @IBAction func startBaseView(_ sender: UIButton) {
        if let viewController = navigationController?.viewControllers[0] {
            navigationController?.popToViewController(viewController, animated: true)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLable.text = detailsTitle
    }
}
