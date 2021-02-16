//
//  Environment.swift
//  CleanArchitectureSwiftUI
//
//  Created by Dima Shvets on 16.02.2021.
//

import Foundation

struct Environment {
 
    enum Key: String {
        case apiKey = "API_KEY"
        case apiURL = "API_URL"
        case imageAPIURL = "IMAGE_API_URL"
    }

    var apiKey: String { Bundle.main.object(forInfoDictionaryKey: Key.apiKey.rawValue) as? String ?? "" }
    var apiURL: String { Bundle.main.object(forInfoDictionaryKey: Key.apiURL.rawValue) as? String ?? "" }
    var imageAPIURL: String { Bundle.main.object(forInfoDictionaryKey: Key.imageAPIURL.rawValue) as? String ?? "" }
}

