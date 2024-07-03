//
//  TenorList.swift
//  
//
//  Created by Sagar on 6/9/24.
//

import Foundation

public struct TenorList : Codable {
    public var id : String?
    public var title : String?
    public var contentDescription : String?
    public var contentRating : String?
    public var media : [TenorMediaFormat]?
    public var created : Double?
    public var itemURL : String?
    public var url : String?
    public var hasAudio : Bool?
    public var hasCaption : Bool?
    
    enum CodingKeys : String, CodingKey {
        case id = "id"
        case title = "title"
        case contentDescription = "content_description"
        case contentRating = "content_rating"
        case media = "media"
        case created = "created"
        case itemURL = "itemurl"
        case url = "url"
        case hasAudio = "hasaudio"
        case hasCaption = "hascaption"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decodeIfPresent(String.self, forKey: .id)
        self.title = try container.decodeIfPresent(String.self, forKey: .title)
        self.contentDescription = try container.decodeIfPresent(String.self, forKey: .contentDescription)
        self.contentRating = try container.decodeIfPresent(String.self, forKey: .contentRating)
        self.media = try container.decodeIfPresent([TenorMediaFormat].self, forKey: .media)
        self.created = try container.decodeIfPresent(Double.self, forKey: .created)
        self.itemURL = try container.decodeIfPresent(String.self, forKey: .itemURL)
        self.url = try container.decodeIfPresent(String.self, forKey: .url)
        self.hasAudio = try container.decodeIfPresent(Bool.self, forKey: .hasAudio)
        self.hasCaption = try container.decodeIfPresent(Bool.self, forKey: .hasCaption)
    }
}
