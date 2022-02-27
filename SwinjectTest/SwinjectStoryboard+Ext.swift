//
//  SwinjectStoryboard+Ext.swift
//  SwinjectTest
//
//  Created by Mohamed Attar on 26/02/2022.
//

import Foundation
import Swinject
import SwinjectStoryboard

extension SwinjectStoryboard {
    
    /*
     This extension helps Swinject to inject dependencies in the initial view controller,
     if we're using Storyboards. It can also be implemented in SceneDelegate and injected.
     using UIWindow without using SwinjectStoryboard.
    */
    
    @objc class func setup() {
        /*
         Containers use the method register to register dependencies. It's similar to
         Key-Value dictionary of dependencies. The Service (Protocol) acts as a key (not always) and
         in the Factory Method (Closure) the value is returned (instance of Component (Class).
         When we want to use this dependency we use resolve function, we give it the key (in our case
         Service.
         */
        defaultContainer.register(APIFetcherRepository.self) { _ in
            return APIFetcher()
        }
        defaultContainer.register(FetchImagesRepository.self) { r in
            let fetcher = FetchImagesImplementation(fetcher: r.resolve(APIFetcherRepository.self)!)
            return fetcher
        }
        
        // Injects dependencies when the storyboard finishes initialization.
        defaultContainer.storyboardInitCompleted(ViewController.self) { r, c in
            c.imagesFetcher = r.resolve(FetchImagesRepository.self)
        }
        
    }
}
