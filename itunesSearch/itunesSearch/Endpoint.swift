//
//  Endpoint.swift
//  itunesSearch
//
//  Created by Henry Moran on 1/18/18.
//  Copyright © 2018 Henry Moran. All rights reserved.
//

import Foundation

protocol Endpoint {
    var base: String { get }
    var path: String { get }
    var queryItems: [URLQueryItem] { get }
}

extension Endpoint {
    var urlComponents: URLComponents {
        var components = URLComponents(string: base)!
        components.path = path
        components.queryItems = queryItems
        
        return components
    }
    
    var request: URLRequest {
        let url = urlComponents.url!
        return URLRequest(url: url)
    }
}

enum Itunes {
    case search(term: String, media: ItunesMedia?)
}

extension Itunes: Endpoint {
    var base: String {
        return "https://itunes.apple.com"
    }
    
    var path: String {
        switch self {
        case .search: return "/search"
        }
    }
    
    var queryItems: [URLQueryItem] {
        switch self {
        case .search(let term, let media):
            var result = [URLQueryItem]()
            
            let searchTermItem = URLQueryItem(name: "term", value: term)
            result.append(searchTermItem)
            
            if let media = media {
                let mediaItem = URLQueryItem(name: "media", value: media.description)
                result.append(mediaItem)
            }
            
            return result
        }
    }
}



























