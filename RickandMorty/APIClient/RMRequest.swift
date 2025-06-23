//
//  RMRequest.swift
//  RickandMorty
//
//  Created by Munkh-Anu Nyamdorj on 2025.06.19.
//

import Foundation

///Objects that represent a single API call
final class RMRequest {
    ///API constants
    private struct Constants {
        static let baseURLString = "https://rickandmortyapi.com/api/"
    }
    
    ///Desired endpoint
    private let endpoint: RMEndpoint
    
    ///Path components for api, if any
    private let pathComponents: Set<String>
    
    ///Query Parameters for api, if any
    private let queryParameters: [URLQueryItem]
    
    ///Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseURLString
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            let argumentString = queryParameters.compactMap ({
                guard let value  = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    ///computed and constructed api url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    ///desired http method
    public let httpMethod: String = "GET"
    
    ///Construct request
    ///- Parameters:
    ///  - endpoint: target endpoint
    ///  - pathComponents: collection path Componnets
    ///  - queryParameters: collection queryParameters 
    public init(endpoint: RMEndpoint,
                pathComponents: Set<String> = [],
                queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
