//
//  CollectionViewCell.swift
//  Tutorial
//
//  Created by Witchcraft-11 on 23.01.2018.
//  Copyright © 2018 Witchcraft-11. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    class func getNib() -> UINib {
        return UINib(nibName: "CollectionViewCell", bundle: nil)
    }

    class func register(collectionView: UICollectionView) {
        collectionView.register(self.getNib(), forCellWithReuseIdentifier: "CollectionViewCell")
    }

}
