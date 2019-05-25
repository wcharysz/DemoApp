//
//  Sys.swift
//  DemoApp
//
//  Created by iOS Team 2 on 5/23/19.
//  Copyright © 2019 iOS Team 2. All rights reserved.
//

import Foundation

protocol SysProtocol: Codable {
    var pod: String? {get set}
}

struct Sys: SysProtocol {
    var pod: String?
    
    enum CodingKeys: String, CodingKey {
        case pod
    }
}
