//
//  Images.swift
//  SwinjectTest
//
//  Created by Mohamed Attar on 24/02/2022.
//

import Foundation

struct Images: Codable {
    let imgURL: String?
    let author: String?
    
    enum CodingKeys: String, CodingKey {
        case imgURL = "url"
        case author
    }
}
