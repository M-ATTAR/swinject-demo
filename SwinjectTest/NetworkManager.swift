//
//  NetworkManager.swift
//  SwinjectTest
//
//  Created by Mohamed Attar on 24/02/2022.
//

import Foundation

class APIFetcher: APIFetcherRepository {
    
    func handleClientError(_ error: Error) {
        print(error.localizedDescription)
    }
    func handleServerError(_ response: URLResponse?) {
        print(response.debugDescription)
    }
    public func fetch(completion: @escaping ([Images]) -> () ) {
        guard let url = URL(string: "https://picsum.photos/v2/list?page=1&limit=30") else {return}
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                self.handleClientError(error)
                return
            }
            guard let httpResponse = response as? HTTPURLResponse,
                  (200...299).contains(httpResponse.statusCode) else {
                      self.handleServerError(response)
                      return
                  }
            guard let data = data else {
                return
            }

            let jsonDecoder = JSONDecoder()
            do {
                let jsonDecoded = try jsonDecoder.decode([Images].self, from: data)
                completion(jsonDecoded)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
