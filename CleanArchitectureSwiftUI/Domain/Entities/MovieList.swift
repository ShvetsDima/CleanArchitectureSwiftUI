//
//  MovieList.swift
//  CleanArchitectureSwiftUI
//
//  Created by Dima Shvets on 16.02.2021.
//

import Foundation

struct MovieList: Codable {
    let page: Int
    let results: [Movie]
    let totalPages: Int
    let totalResults: Int
    
    private enum CodingKeys: String, CodingKey {
        case page
        case results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

