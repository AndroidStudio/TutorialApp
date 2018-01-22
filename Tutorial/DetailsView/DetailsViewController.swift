//
//  ConstrainsBasicsContoller.swift
//  Tutorial
//
//  Created by Witchcraft-11 on 19.01.2018.
//  Copyright © 2018 Witchcraft-11. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    public var detailsTitle: String?
    public var detailsDescription: String?

    @IBOutlet weak var titleLable: UITextField!
    @IBOutlet weak var descriptionLabel: UILabel!

    @IBAction func startBaseView(_ sender: UIButton) {
        if let viewController = navigationController?.viewControllers[0] {
            navigationController?.popToViewController(viewController, animated: true)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if detailsDescription != nil {
            descriptionLabel.text = detailsDescription
        }

        titleLable.text = detailsTitle
    }
}
