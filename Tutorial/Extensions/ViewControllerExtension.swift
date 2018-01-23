//
//  ViewControllerExtension.swift
//  Tutorial
//
//  Created by Witchcraft-11 on 21.01.2018.
//  Copyright © 2018 Witchcraft-11. All rights reserved.
//

import UIKit

extension UIViewController {

    class func detailsViewController(title: String?, description: String?) -> DetailsViewController {
        let controller = createViewController(DetailsViewController.self, "DetailsViewStoryboard", "DetailsViewStoryboard")

        controller.detailsDescription = description
        controller.detailsTitle = title

        return controller
    }

    class func scrollViewController() -> ScrollViewController {
        return createViewController(ScrollViewController.self, "ScrollViewStoryboard", "ScrollViewStoryboard")
    }

    class func tableViewController() -> TableViewController {
        return createViewController(TableViewController.self, "TableViewStoryboard", "TableViewStoryboard")
    }

    class func pageViewController() -> PageViewController {
        return createViewController(PageViewController.self, "PageViewStoryboard", "PageViewStoryboard")
    }

    class func collectionViewController() -> CollectionViewController {
        return createViewController(CollectionViewController.self, "CollectionStoryboard", "CollectionStoryboard")
    }

    private class func createViewController<T: UIViewController>(_ type: T.Type, _ name: String, _ identifier: String) -> T {
        return UIStoryboard(name: name, bundle: nil).instantiateViewController(withIdentifier: identifier) as! T
    }

    func pushController(controller: UIViewController) {
        navigationController?.pushViewController(controller, animated: true)
    }

}

