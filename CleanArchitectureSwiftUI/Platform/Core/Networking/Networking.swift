//
//  Networking.swift
//  CleanArchitectureSwiftUI
//
//  Created by Dima Shvets on 16.02.2021.
//

import Foundation
import Alamofire
import Combine

protocol Networking {
    func get<T: Encodable, R: Decodable>(endpoint: String, parameters: T?) -> AnyPublisher<R, DomainError>
    func post<T: Encodable, R: Decodable>(endpoint: String, parameters: T?) -> AnyPublisher<R, DomainError>
    func put<T: Encodable, R: Decodable>(endpoint: String, parameters: T?) -> AnyPublisher<R, DomainError>
    func delete<T: Encodable, R: Decodable>(endpoint: String, parameters: T?) -> AnyPublisher<R, DomainError>
}


final class Network: Networking {
    
    private let environment: Environment
    
    init(_ environment: Environment) {
        self.environment = environment
    }
    
    func get<T: Encodable, R: Decodable>(endpoint: String, parameters: T?) -> AnyPublisher<R, DomainError> {
        AF.request(environment.apiURL + endpoint,
                   method: .get,
                   parameters: parameters,
                   encoder: URLEncodedFormParameterEncoder.default)
            .publishDecodable(type: R.self)
            .result()
            .flatMap { $0.publisher }
            .mapError { DomainError(code: $0.responseCode, description: $0.localizedDescription) }
            .eraseToAnyPublisher()
    }
    
    func post<T: Encodable, R: Decodable>(endpoint: String, parameters: T?) -> AnyPublisher<R, DomainError> {
        AF.request(environment.apiURL + endpoint,
                   method: .post,
                   parameters: parameters,
                   encoder: JSONParameterEncoder.default)
            .publishDecodable(type: R.self)
            .result()
            .flatMap { $0.publisher }
            .mapError { DomainError(code: $0.responseCode, description: $0.localizedDescription) }
            .eraseToAnyPublisher()
    }
    
    func put<T: Encodable, R: Decodable>(endpoint: String, parameters: T?) -> AnyPublisher<R, DomainError> {
        AF.request(environment.apiURL + endpoint,
                   method: .put,
                   parameters: parameters,
                   encoder: JSONParameterEncoder.default)
            .publishDecodable(type: R.self)
            .result()
            .flatMap { $0.publisher }
            .mapError { DomainError(code: $0.responseCode, description: $0.localizedDescription) }
            .eraseToAnyPublisher()
    }
    
    func delete<T: Encodable, R: Decodable>(endpoint: String, parameters: T?) -> AnyPublisher<R, DomainError> {
        AF.request(environment.apiURL + endpoint,
                   method: .delete,
                   parameters: parameters,
                   encoder: URLEncodedFormParameterEncoder.default)
            .publishDecodable(type: R.self)
            .result()
            .flatMap { $0.publisher }
            .mapError { DomainError(code: $0.responseCode, description: $0.localizedDescription) }
            .eraseToAnyPublisher()
    }
    
}

