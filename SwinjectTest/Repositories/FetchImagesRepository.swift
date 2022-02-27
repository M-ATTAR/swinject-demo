//
//  FetchImagesRepository.swift
//  SwinjectTest
//
//  Created by Mohamed Attar on 24/02/2022.
//

import Foundation

protocol FetchImagesRepository { // Acts as mediator between the network manager and the view controller. Implementation is down below.
    func getImages()
}

class FetchImagesImplementation: FetchImagesRepository {
    
    private let fetcher: APIFetcherRepository
    
    init(fetcher: APIFetcherRepository) { // Initializer Injection Pattern: DI using init method.
        self.fetcher = fetcher
    }
    
    func getImages() {
        
        fetcher.fetch() { images in
            for image in images {
                if let author = image.author, let url = image.imgURL {
                    print("Author: ", author, "URL: ", url)
                } else {
                    print("NON FOUND")
                }
            }
        }
    }
}
