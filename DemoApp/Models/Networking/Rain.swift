//
//  Rain.swift
//  DemoApp
//
//  Created by Wojciech Charysz on 25.05.2019.
//  Copyright © 2019 iOS Team 2. All rights reserved.
//

import Foundation

struct Rain: Precipitation {
    var fallInLast3h: Float
    
    enum CodingKeys: String, CodingKey {
        case fallInLast3h = "3h"
    }
}
