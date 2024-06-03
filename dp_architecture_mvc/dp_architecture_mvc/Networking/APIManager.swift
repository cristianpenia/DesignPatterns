//
//  APIManager.swift
//  dp_architecture_mvc
//
//  Created by Cristian Peña Barrios on 31/05/24.
//

import Foundation

class APIManager {

    static let shared = APIManager()
    
    private init() {}

    func request(endpoint: APIRouterHome, completion: @escaping (Result<Data, Error>) -> Void) {
        guard let url = URL(string: endpoint.url) else {
            completion(.failure(NSError(domain: "Invalid URL", code: -1, userInfo: nil)))
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET" // o "POST", "PUT", etc. dependiendo del endpoint
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "No data", code: -1, userInfo: nil)))
                return
            }
            
            completion(.success(data))
        }
        
        task.resume()
    }
}
