//
//  Weather.swift
//  DemoApp
//
//  Created by iOS Team 2 on 5/23/19.
//  Copyright © 2019 iOS Team 2. All rights reserved.
//

import Foundation

protocol WeatherProtocol: Codable {
    var id: Int? {get set}
    var main: String? {get set}
    var weatherDescription: String? {get set}
    var icon: String? {get set}
}

struct Weather: WeatherProtocol {
    var id: Int?
    
    var main: String?
    
    var weatherDescription: String?
    
    var icon: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case main
        case weatherDescription = "description"
        case icon
    }
}
