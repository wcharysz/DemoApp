//
//  Coordinates.swift
//  DemoApp
//
//  Created by iOS Team 2 on 5/23/19.
//  Copyright © 2019 iOS Team 2. All rights reserved.
//

import Foundation

protocol CoordinatesProtocol: Codable {
    var longitude: Double? {get set}
    var latitude: Double? {get set}
}

struct Coordinates: CoordinatesProtocol {
    var longitude: Double?
    
    var latitude: Double?
    
    enum CodingKeys: String, CodingKey {
        case longitude = "lon"
        case latitude = "lat"
    }
}
