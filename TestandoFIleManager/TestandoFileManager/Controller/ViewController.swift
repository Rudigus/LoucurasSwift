//
//  ViewController.swift
//  TestandoFIleManager
//
//  Created by Rodrigo Matos Aguiar on 25/08/20.
//  Copyright © 2020 Rudigus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemPurple
        // Mock
        let terra = HrefCelestialBody(href: ["terra1", "terra2"])
        let marte = HrefCelestialBody(href: ["marte1", "marte2"])
        var celestial = CelestialBody(terra: terra, marte: marte)
        celestial.marte.href.append("marte3")
        // Save
        let database = Database()
        database.save(celestial)
        // Load
        let loadedCelestial = database.load()
        print(loadedCelestial)
    }


}

