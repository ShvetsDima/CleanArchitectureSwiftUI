//
//  MovieService.swift
//  CleanArchitectureSwiftUI
//
//  Created by Dima Shvets on 16.02.2021.
//

import Foundation
import Combine

final class MovieService: MovieUseCase {
    
    private let context: Context
    
    init(_ context: Context) {
        self.context = context
    }
    
    func fetchMovies(_ page: Int) -> AnyPublisher<MovieList, DomainError> {
        let params = MovieListParams(page: page)
        return context.networking.get(endpoint: API.discover.rawValue, parameters: params)
    }
    
}
