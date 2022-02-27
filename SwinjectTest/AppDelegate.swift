//
//  AppDelegate.swift
//  SwinjectTest
//
//  Created by Mohamed Attar on 24/02/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

//    let container: Container = {
//        let container = Container()
//        // Service acts as a key. When you "resove" you provide the key to get the "value".
//        container.register(APIFetcherRepository.self) { _ in // Service aka Key
//            return APIFetcher() // Factory method / Component aka Value
//        }
//        container.register(FetchImagesImplementation.self) { r in
//            let fetcher = FetchImagesImplementation(fetcher: r.resolve(APIFetcherRepository.self)!)
//            return fetcher
//        }
//
//        container.register(ViewController.self) { r in
//            let controller = ViewController()
//            controller.imagesFetcher = r.resolve( FetchImagesImplementation.self )!
//            return controller
//        }
//        return container
//    }()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

