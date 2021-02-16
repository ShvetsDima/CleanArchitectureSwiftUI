//
//  DomainError.swift
//  CleanArchitectureSwiftUI
//
//  Created by Dima Shvets on 16.02.2021.
//

import Foundation

struct DomainError: Error {
    let code: Int?
    let description: String
}
