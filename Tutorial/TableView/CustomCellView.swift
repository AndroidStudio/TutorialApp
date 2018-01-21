//
//  CustomCellView.swift
//  Tutorial
//
//  Created by Witchcraft-11 on 20.01.2018.
//  Copyright © 2018 Witchcraft-11. All rights reserved.
//

import UIKit

class CustomCellView: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var descriptionTextView: UILabel!
    @IBOutlet weak var titleTextView: UILabel!

    public func bindData(data: TableModel) {
        if let title: String = data.title {
            titleTextView.text = title
        }

        if let description: String = data.description {
            descriptionTextView.text = description
        }
        
        cellImageView.image = data.image
    }
}
