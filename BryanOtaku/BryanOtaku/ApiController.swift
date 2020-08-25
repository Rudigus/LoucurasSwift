//
//  ApiController.swift
//  BryanOtaku
//
//  Created by Rodrigo Matos Aguiar on 24/08/20.
//  Copyright © 2020 Rudigus. All rights reserved.
//

import Foundation

enum ApiEndpoint: String {
    case anime = "https://kitsu.io/api/edge/anime", manga = "https://kitsu.io/api/edge/manga"
}

class ApiController {

    func getFromEndpoint(endpoint: ApiEndpoint, limit: Int = 10, offset: Int = 0) {
        let url = URL(string: "\(endpoint.rawValue)?page[limit]=\(limit)&page[offset]=\(offset)")!
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        urlRequest.setValue("application/vnd.api+json", forHTTPHeaderField: "Accept")
        urlRequest.setValue("application/vnd.api+json", forHTTPHeaderField: "Content-Type")
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if let data = data {
                do {
                    let response = try JSONDecoder().decode(ApiResponse.self, from: data)
                    print(response.works)
                } catch {
                    print(error)
                }
            }
        }
        task.resume()
    }

}
