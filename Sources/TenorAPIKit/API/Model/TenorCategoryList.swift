//
//  TenorCategoryList.swift
//  
//
//  Created by Sagar on 6/29/24.
//

import Foundation

public struct TenorCategoryList : Codable {
    public var tags : [TenorCategoryInfo]?
    
    enum CodingKeys : String, CodingKey {
        case tags = "tags"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.tags = try container.decodeIfPresent([TenorCategoryInfo].self, forKey: .tags)
    }
}
