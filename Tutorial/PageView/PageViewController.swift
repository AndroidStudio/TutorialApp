//
//  PageViewController.swift
//  Tutorial
//
//  Created by Witchcraft-11 on 21.01.2018.
//  Copyright © 2018 Witchcraft-11. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {

    override class func identifier() -> String { return "PageViewStoryboard" }

    lazy var controllers: [UIViewController] = [
        cratePage(identifier: DetailsViewController.identifier()),
        cratePage(identifier: ScrollViewController.identifier()),
        cratePage(identifier: DetailsViewController.identifier()),
        cratePage(identifier: ScrollViewController.identifier()),
        cratePage(identifier: TableViewController.identifier())
    ]

    private func cratePage(identifier: String) -> UIViewController {
        return createViewController(identifier, identifier)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        delegate = self
        
        if let first: UIViewController = controllers.first {
            setViewControllers([first], direction: UIPageViewControllerNavigationDirection.forward, animated: true, completion: nil)
        }
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = controllers.index(of: viewController) else {
            return nil
        }

        let previousIndex = index - 1
        guard previousIndex >= 0 else {
            return controllers.last
        }

        return controllers[previousIndex]
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = controllers.index(of: viewController) else {
            return nil
        }

        let nextIndex = index + 1
        guard nextIndex < controllers.count else {
            return controllers.first
        }

        return controllers[nextIndex]
    }

    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let firstController = viewControllers?.first, let index = controllers.index(of: firstController) else {
            return 0
        }

        return index
    }

    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return controllers.count
    }

}

