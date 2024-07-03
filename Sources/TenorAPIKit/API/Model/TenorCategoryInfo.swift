//
//  TenorCategoryInfo.swift
//  
//
//  Created by Sagar on 6/29/24.
//

import Foundation

public struct TenorCategoryInfo : Codable {
    public var searchTerm : String?
    public var searchApiPath : String?
    public var image : String?
    public var name : String?
    
    enum CodingKeys : String, CodingKey {
        case searchTerm = "searchterm"
        case searchApiPath = "path"
        case image = "image"
        case name = "name"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.searchTerm = try container.decodeIfPresent(String.self, forKey: .searchTerm)
        self.searchApiPath = try container.decodeIfPresent(String.self, forKey: .searchApiPath)
        self.image = try container.decodeIfPresent(String.self, forKey: .image)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
    }
}
