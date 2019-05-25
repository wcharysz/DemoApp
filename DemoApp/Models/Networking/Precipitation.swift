//
//  Precipitation.swift
//  DemoApp
//
//  Created by Wojciech Charysz on 25.05.2019.
//  Copyright © 2019 iOS Team 2. All rights reserved.
//

import Foundation

protocol Precipitation: Codable {
    var fallInLast3h: Float {get set}
}
