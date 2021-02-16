//
//  UseCaseProvider.swift
//  CleanArchitectureSwiftUI
//
//  Created by Dima Shvets on 16.02.2021.
//

import Foundation

protocol UseCaseProvider {
    var movie: MovieUseCase { get }
}
