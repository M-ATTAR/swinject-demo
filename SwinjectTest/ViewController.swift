//
//  ViewController.swift
//  SwinjectTest
//
//  Created by Mohamed Attar on 24/02/2022.
//

import UIKit
import Swinject

class ViewController: UIViewController {
    
    var imagesFetcher: FetchImagesRepository?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue

        imagesFetcher?.getImages()
    }
    
    
}

