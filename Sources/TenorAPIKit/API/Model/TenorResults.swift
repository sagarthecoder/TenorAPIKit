//
//  TenorResults.swift
//  
//
//  Created by Sagar on 6/9/24.
//

import Foundation

public struct TenorResults :  Codable {
    public var results : [TenorList]?
    public var next : String?
    
    enum CodingKeys : String, CodingKey {
        case results = "results"
        case next = "next"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.results = try container.decodeIfPresent([TenorList].self, forKey: .results)
        self.next = try container.decodeIfPresent(String.self, forKey: .next)
    }
}
