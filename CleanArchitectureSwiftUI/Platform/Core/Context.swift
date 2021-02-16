//
//  Context.swift
//  CleanArchitectureSwiftUI
//
//  Created by Dima Shvets on 16.02.2021.
//

import Foundation

struct Context {
    let networking: Networking
    let database: Database
    
    init(_ environment: Environment) {
        self.networking = Network(environment)
        self.database = RealmDatabase(environment)
    }
}
