//
//  CollectionViewController.swift
//  Tutorial
//
//  Created by Witchcraft-11 on 23.01.2018.
//  Copyright © 2018 Witchcraft-11. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            CollectionViewCell.register(collectionView: collectionView)
            self.collectionView.delegate = self
            self.collectionView.dataSource = self
        }
    }
}

extension CollectionViewController: UICollectionViewDataSource, UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
    }
}
