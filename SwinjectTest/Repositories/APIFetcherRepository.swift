//
//  APIFetcherRepository.swift
//  SwinjectTest
//
//  Created by Mohamed Attar on 24/02/2022.
//

import Foundation


protocol APIFetcherRepository { // Repo for fetching the images from the API. Implemented in NetworkManager class.
    func handleClientError(_ error: Error)
    func handleServerError(_ response: URLResponse?)
    func fetch(completion: @escaping ([Images]) -> ())
}
