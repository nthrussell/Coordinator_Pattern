//
//  NetworkProvider.swift
//  Coordinator_Pattern
//
//  Created by russel on 18/9/24.
//

import Foundation
import Combine

protocol NetworkProvider {
    func load(_ request: URLRequest) -> AnyPublisher<Data, URLError>
}

extension URLSession: NetworkProvider {
    func load(_ request: URLRequest) -> AnyPublisher<Data, URLError> {
        return dataTaskPublisher(for: request)
            .map { $0.data }
            .eraseToAnyPublisher()
    }
}
