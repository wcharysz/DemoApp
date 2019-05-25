//
//  Clouds.swift
//  DemoApp
//
//  Created by iOS Team 2 on 5/23/19.
//  Copyright © 2019 iOS Team 2. All rights reserved.
//

import Foundation

protocol CloudsProtocol: Codable {
    var all: Int? {get set}
}

struct Clouds: CloudsProtocol {
    var all: Int?
    
    enum CodingKeys: String, CodingKey {
        case all
    }
}
