//
//  Wind.swift
//  DemoApp
//
//  Created by iOS Team 2 on 5/23/19.
//  Copyright © 2019 iOS Team 2. All rights reserved.
//

import Foundation

protocol WindProtocol: Codable {
    var speed: Float? {get set}
    var degree: Float? {get set}
}

struct Wind: WindProtocol {
    var speed: Float?
    
    var degree: Float?
    
    enum CodingKeys: String, CodingKey {
        case speed
        case degree = "deg"
    }
}
