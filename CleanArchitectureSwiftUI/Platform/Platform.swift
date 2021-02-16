//
//  Platform.swift
//  CleanArchitectureSwiftUI
//
//  Created by Dima Shvets on 16.02.2021.
//

import Foundation

final class Platform: UseCaseProvider {
    
    //MARK: - Context
    private let context: Context
    
    //MARK: - Services
    private lazy var movieService = MovieService(context)
    
    //MARK: - Gateways
    var movie: MovieUseCase { movieService }
    
    init(_ environment: Environment) {
        self.context = Context(environment)
    }
     
}
