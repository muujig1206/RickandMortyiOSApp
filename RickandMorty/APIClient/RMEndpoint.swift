//
//  RMEndpoint.swift
//  RickandMorty
//
//  Created by Munkh-Anu Nyamdorj on 2025.06.19.
//

import Foundation

///Represenst unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
