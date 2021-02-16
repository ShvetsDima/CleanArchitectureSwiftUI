//
//  MovieUseCase.swift
//  CleanArchitectureSwiftUI
//
//  Created by Dima Shvets on 16.02.2021.
//

import Foundation
import Combine

protocol MovieUseCase {
    func fetchMovies(_ page: Int) -> AnyPublisher<MovieList, DomainError>
}
