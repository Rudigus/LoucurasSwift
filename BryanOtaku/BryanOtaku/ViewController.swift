//
//  ViewController.swift
//  BryanOtaku
//
//  Created by Rodrigo Matos Aguiar on 24/08/20.
//  Copyright © 2020 Rudigus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let apiController = ApiController()
        apiController.getFromEndpoint(endpoint: .anime, limit: 4)
        // Do any additional setup after loading the view.
    }


}

