//
//  Networking.swift
//  DemoApp
//
//  Created by iOS Team 2 on 5/23/19.
//  Copyright © 2019 iOS Team 2. All rights reserved.
//

import Foundation

class Networking {
    
    static let baseURLString = "https://api.openweathermap.org/data/2.5/"
    static let apiKey = "c4cdafbb10631e38749587c90e0b2bb2"
    
    enum ApiURL: String {
        case byCityName = "forecast?q="
        case byCityId = "forecast?id="
    }
    
    enum ApiMode: String {
        case json = "mode=json"
        case xml = "mode=xml"
    }
    
    lazy var decoder: JSONDecoder = {
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .secondsSince1970
        
        return jsonDecoder
    }()

    func downloadWeatherFor(_ cityName: String, countryCode: String, completion: @escaping (_ places: City?) -> Void) {
        var urlString = Networking.baseURLString + ApiURL.byCityName.rawValue
        urlString += cityName + ","
        urlString += countryCode + "&"
        //urlString += ApiMode.json.rawValue + "&"
        urlString += "APPID=" + Networking.apiKey
        
        guard let url = URL(string: urlString) else {
            completion(nil)
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            
            print("JSON: ", String(data: data, encoding: .utf8) ?? "")
            
            do {
                let result = try self.decoder.decode(City.self, from: data)
                completion(result)
            } catch {
                completion(nil)
            }
        }
        
        task.resume()
    }
}
