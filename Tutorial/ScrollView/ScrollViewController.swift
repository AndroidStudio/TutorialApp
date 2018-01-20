//
//  ScrollViewController.swift
//  Tutorial
//
//  Created by Witchcraft-11 on 20.01.2018.
//  Copyright © 2018 Witchcraft-11. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {
    
    class var controller : ScrollViewController {
        return UIStoryboard(name: "ScrollViewStoryboard", bundle: nil).instantiateViewController(withIdentifier: "ScrollViewStoryboard") as! ScrollViewController
    }
    
}
