//
//  Movie.swift
//  CleanArchitectureSwiftUI
//
//  Created by Dima Shvets on 16.02.2021.
//

import Foundation

struct Movie: Codable, Identifiable {
    let id: Int
    let isAdult: Bool
    let backdropPath: String
    let genreIDs: [Int]
    let originalLanguage: String
    let originalTitle: String
    let overview: String
    let popularity: String
    let posterPath: String
    let releaseDate: Date
    let title: String
    let isVideo: Bool
    let voteAverage: Double
    let voteCount: Int
    
    private enum CodingKeys: String, CodingKey {
        case id
        case isAdult = "adult"
        case backdropPath = "backdrop_path"
        case genreIDs = "genre_ids"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview
        case popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title
        case isVideo = "video"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
