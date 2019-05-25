//
//  List.swift
//  DemoApp
//
//  Created by iOS Team 2 on 5/23/19.
//  Copyright © 2019 iOS Team 2. All rights reserved.
//

import Foundation

protocol ListProtocol: Codable {
    var dt: Date? {get set}
    var dtString: String? {get set}
    var main: Main? {get set}
    var weather: [Weather?]? {get set}
    var clouds: Clouds? {get set}
    var wind: Wind? {get set}
    var sys: Sys? {get set}
}

struct List: ListProtocol {
    var dt: Date?
    
    var dtString: String?
    
    var main: Main?
    
    var weather: [Weather?]?
    
    var clouds: Clouds?
    
    var wind: Wind?
    
    var sys: Sys?
    
    
}
