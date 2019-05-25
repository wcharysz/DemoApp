//
//  City.swift
//  DemoApp
//
//  Created by iOS Team 2 on 5/23/19.
//  Copyright © 2019 iOS Team 2. All rights reserved.
//

import Foundation

protocol CityProtocol: Codable {
    var id: Int? {get set}
    var name: String? {get set}
    var countryCode: String? {get set}
    var cod: Int? {get set}
    var message: Float? {get set}
    var cnt: Int? {get set}
    var list: [List?]? {get set}
    var coordinates: Coordinates? {get set}
}

struct City: CityProtocol {
    var coordinates: Coordinates?
    
    var id: Int?
    var name: String?
    var countryCode: String?
    var cod: Int?
    var message: Float?
    var cnt: Int?
    var list: [List?]?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case countryCode = "country"
        case message
        case cod
        case cnt
        case list
        case coordinates = "coord"
    }
}
