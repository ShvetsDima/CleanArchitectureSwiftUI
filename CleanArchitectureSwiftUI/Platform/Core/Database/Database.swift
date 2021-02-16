//
//  Database.swift
//  CleanArchitectureSwiftUI
//
//  Created by Dima Shvets on 16.02.2021.
//

import Foundation

protocol Database { }


final class RealmDatabase: Database {
    
    private let environment: Environment
    
    init(_ environment: Environment) {
        self.environment = environment
    }
    
}
