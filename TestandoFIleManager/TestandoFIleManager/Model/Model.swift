//
//  Model.swift
//  TestandoFIleManager
//
//  Created by Rodrigo Matos Aguiar on 25/08/20.
//  Copyright © 2020 Rudigus. All rights reserved.
//

import Foundation

struct CelestialBody: Codable {
    var terra: HrefCelestialBody
    var marte: HrefCelestialBody
}

struct HrefCelestialBody: Codable {
    var href: [String]
}
