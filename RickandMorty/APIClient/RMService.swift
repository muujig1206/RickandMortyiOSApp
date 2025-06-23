//
//  RMService.swift
//  RickandMorty
//
//  Created by Munkh-Anu Nyamdorj on 2025.06.19.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    ///Privatized constructor
    private init() {}
    
    ///Send Rick and Morty API Call
    /// - Parameters:
    ///     - request: Request instance
    ///     - type : the type of object we expect
    ///     - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void ){
        
    }
}
