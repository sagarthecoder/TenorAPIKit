//
//  TenorItemInfo.swift
//  
//
//  Created by Sagar on 6/9/24.
//

import Foundation

public struct TenorItemInfo : Codable {
    public var url : String?
    public var preview : String?
    public var duration : Double?
    public var size : Int?
    public var dimension : [Int]?
    
    enum CodingKeys : String, CodingKey {
        case url = "url"
        case preview = "preview"
        case duration = "duration"
        case size = "size"
        case dimension = "dims"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.preview = try container.decodeIfPresent(String.self, forKey: .preview)
        self.duration = try container.decodeIfPresent(Double.self, forKey: .duration)
        self.size = try container.decodeIfPresent(Int.self, forKey: .size)
        self.dimension = try container.decodeIfPresent([Int].self, forKey: .dimension)
    }
}
