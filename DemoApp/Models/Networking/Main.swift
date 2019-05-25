//
//  File.swift
//  DemoApp
//
//  Created by iOS Team 2 on 5/23/19.
//  Copyright © 2019 iOS Team 2. All rights reserved.
//

import Foundation

protocol MainProtocol: Codable {
    var temp: Float? {get set}
    var tempMin: Float? {get set}
    var tempMax: Float? {get set}
    var pressure: Float? {get set}
    var seaLevel: Float? {get set}
    var groundLevel: Float? {get set}
    var humidity: UInt? {get set}
    var tempKF: Float? {get set}
}

struct Main: MainProtocol {
    var temp: Float?
    
    var tempMin: Float?
    
    var tempMax: Float?
    
    var pressure: Float?
    
    var seaLevel: Float?
    
    var groundLevel: Float?
    
    var humidity: UInt?
    
    var tempKF: Float?
    
    enum CodingKeys: String, CodingKey {
        case temp
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case pressure
        case seaLevel = "sea_level"
        case groundLevel = "grnd_level"
        case humidity
        case tempKF = "temp_kf"
    }
}
