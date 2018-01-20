//
//  ConstrainsBasicsContoller.swift
//  Tutorial
//
//  Created by Witchcraft-11 on 19.01.2018.
//  Copyright © 2018 Witchcraft-11. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    class var controller: DetailsViewController {
        return UIStoryboard(name: "DetailsViewStoryboard", bundle: nil).instantiateViewController(withIdentifier: "DetailsViewStoryboard") as! DetailsViewController
    }
    
}
