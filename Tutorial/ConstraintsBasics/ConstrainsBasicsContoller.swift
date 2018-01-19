//
//  ConstrainsBasicsContoller.swift
//  Tutorial
//
//  Created by Witchcraft-11 on 19.01.2018.
//  Copyright © 2018 Witchcraft-11. All rights reserved.
//

import UIKit

class ConstraintsBasicsController: UIViewController {
    
    class var controller: ConstraintsBasicsController {
        return UIStoryboard(name: "ConstraintBasics", bundle: nil).instantiateViewController(withIdentifier: "ConstraintBasics") as! ConstraintsBasicsController
    }
    
}
