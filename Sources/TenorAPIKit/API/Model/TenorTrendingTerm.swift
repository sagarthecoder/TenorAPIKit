//
//  TenorTrendingTerm.swift
//  
//
//  Created by Sagar on 6/30/24.
//

import Foundation

public struct TenorTrendingTerm : Codable {
    public var results : [String]?
    
    enum CodingKeys : String, CodingKey {
        case results = "results"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.results = try container.decodeIfPresent([String].self, forKey: .results)
    }
}
