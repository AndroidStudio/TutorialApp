//
//  ViewControllerExtension.swift
//  Tutorial
//
//  Created by Witchcraft-11 on 21.01.2018.
//  Copyright © 2018 Witchcraft-11. All rights reserved.
//

import UIKit

extension UIViewController {
    @objc class func identifier() -> String? { return nil }
    @objc class func name() -> String? { return nil }
    
    func createViewController(_ name: String, _ identifier: String) -> UIViewController {
        return UIStoryboard(name: name, bundle: nil).instantiateViewController(withIdentifier: identifier)
    }

    func pushController<T: UIViewController>(type: T.Type, sendData: ((T) -> ())? = nil) {
        if let navigation = navigationController, let name = T.name() ?? T.identifier(), let identifier = T.identifier() {
            let viewController: T = createViewController(name, identifier) as! T

            sendData?(viewController)
            navigation.pushViewController(viewController, animated: true)
        }
    }
}

