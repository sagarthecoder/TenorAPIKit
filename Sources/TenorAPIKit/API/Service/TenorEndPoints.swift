//
//  TenorEndPoints.swift
//  
//
//  Created by Sagar on 7/2/24.
//

import Foundation

enum TenorEndPoints {
    case getCategories(_ apiKey : String?)
    case getTrendingGifs(_ apiKey: String?, _ limit: Int?, _ pos: String?)
    case getTrendingTags(_ apiKey: String?, _ limit: Int?)
    case getSearchedGifs(_ apiKey: String?, _ searchKey: String?, _ limit: Int?, _ pos: String?)
    case getSearchSuggestions(_ apiKey: String?, _ searchKey: String?, _ limit: Int?)
    case getAutocompleteTags(_ apiKey: String?, _ query : String?, _ limit: Int?)
}

extension TenorEndPoints : Endpoint {
    
    var scheme: String {
        return "https"
    }
    
    var host: String {
        return "g.tenor.com"
    }
    
    var path: String {
        let prefix = "/v1"
        switch self {
        case .getCategories(_):
            return prefix + "/categories"
        case .getTrendingGifs(_, _, _):
            return prefix + "/trending"
        case .getTrendingTags(_, _):
            return prefix + "/trending_terms"
        case .getSearchedGifs(_, _, _, _):
            return prefix + "/search"
        case .getSearchSuggestions(_, _, _):
            return prefix + "/search_suggestions"
        case .getAutocompleteTags(_, _, _):
            return prefix + "/autocomplete"
        }
    }
    
    var body: [String : String]? {
        return nil
    }
    
    var method: RequestMethod {
        return .get
    }
    
    var queryItems: [URLQueryItem]? {
        var queries = [URLQueryItem]()
        let defaultAPIKey = "LIVDSRZULELA"
        switch self {
        case .getCategories(let apiKey):
            queries.append( URLQueryItem(name: "key", value: apiKey ?? defaultAPIKey))
        case .getTrendingGifs(let apiKey, let limit, let pos):
            queries.append( URLQueryItem(name: "key", value: apiKey ?? defaultAPIKey))
            if let limit = limit {
                queries.append(URLQueryItem(name: "limit", value: "\(limit)"))
            }
            if let pos = pos {
                queries.append(URLQueryItem(name: "pos", value: pos))
            }
        case .getTrendingTags(let apiKey, let limit):
            queries.append(URLQueryItem(name: "key", value: (apiKey ?? defaultAPIKey)))
            if let limit = limit {
                queries.append(URLQueryItem(name: "limit", value: "\(limit)"))
            }
        case .getSearchedGifs(let apiKey, let searchKey, let limit, let pos):
            queries.append(URLQueryItem(name: "key", value: apiKey ?? defaultAPIKey))
            if let searchKey = searchKey {
                queries.append(URLQueryItem(name: "q", value: searchKey))
            }
            if let limit = limit {
                queries.append(URLQueryItem(name: "limit", value: "\(limit)"))
            }
            if let pos = pos {
                queries.append(URLQueryItem(name: "pos", value: pos))
            }
        case .getSearchSuggestions(let apiKey, let searchKey, let limit):
            queries.append(URLQueryItem(name: "key", value: apiKey ?? defaultAPIKey))
            if let searchKey = searchKey {
                queries.append(URLQueryItem(name: "q", value: searchKey))
            }
            if let limit = limit {
                queries.append(URLQueryItem(name: "limit", value: "\(limit)"))
            }
        case .getAutocompleteTags(let apiKey, let query, let limit):
            queries.append(URLQueryItem(name: "key", value: apiKey ?? defaultAPIKey))
            if let limit = limit {
                queries.append(URLQueryItem(name: "limit", value: "\(limit)"))
            }
            if let query = query {
                queries.append(URLQueryItem(name: "q", value: query))
            }
        }
        return (queries.isEmpty) ? nil : queries
    }
    
    var header: [String : String]? {
        return ["Content-type": "application/json"]
    }
}
