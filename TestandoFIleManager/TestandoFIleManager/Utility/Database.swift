//
//  Database.swift
//  TestandoFIleManager
//
//  Created by Rodrigo Matos Aguiar on 25/08/20.
//  Copyright © 2020 Rudigus. All rights reserved.
//

import Foundation

class Database {
    
    var fileURL: URL
    
    init(filename: String = "file_manager") {
        let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        var fileURL = url.appendingPathComponent(filename)
        fileURL = fileURL.appendingPathExtension("json")
        //print(fileURL)
        self.fileURL = fileURL
        print(fileURL)
        if !FileManager.default.fileExists(atPath: fileURL.path) {
            let emptyCelestialBody = CelestialBody(terra: HrefCelestialBody(href: []), marte: HrefCelestialBody(href: []))
            save(emptyCelestialBody)
        }
    }

    func save(_ celestialBodies: CelestialBody) {
        do {
            let jsonData = try JSONEncoder().encode(celestialBodies)
            try jsonData.write(to: fileURL)
        } catch {
            print("It was not possible to save the celestial bodies.")
        }
    }

    func load() -> CelestialBody? {
        var celestialBodies: CelestialBody? = nil
        do {
            let jsonData = try Data(contentsOf: fileURL)
            celestialBodies = try JSONDecoder().decode(CelestialBody.self, from: jsonData)
            return celestialBodies
        } catch {
            print("It was not possible to load the celestial bodies.")
            return celestialBodies
        }
    }
    
}
