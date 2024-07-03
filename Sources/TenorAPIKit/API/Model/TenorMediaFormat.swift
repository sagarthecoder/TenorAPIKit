//
//  TenorMediaFormat.swift
//  
//
//  Created by Sagar on 6/9/24.
//

import Foundation

public struct TenorMediaFormat : Codable {
    public var tinyGIF : TenorItemInfo?
    public var gif : TenorItemInfo?
    public var mediumGIF : TenorItemInfo?
    public var nanoGIF : TenorItemInfo?
    public var mp4 : TenorItemInfo?
    public var nanoMP4 : TenorItemInfo?
    public var tinyMP4 : TenorItemInfo?
    public var loopedMP4 : TenorItemInfo?
    public var nanoWebm : TenorItemInfo?
    public var webm : TenorItemInfo?
    public var tinyWebm : TenorItemInfo?
    public var webp : TenorItemInfo?
    
    enum CodingKeys : String, CodingKey {
        case tinyGIF = "tinygif"
        case gif = "gif"
        case mediumGIF = "mediumgif"
        case nanoGIF = "nanogif"
        case mp4 = "mp4"
        case nanoMP4 = "nanomp4"
        case tinyMP4 = "tinymp4"
        case loopedMP4 = "loopedmp4"
        case nanoWebm = "nanowebm"
        case webm = "webm"
        case tinyWebm = "tinywebm"
        case webp = "webp"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.tinyGIF = try container.decodeIfPresent(TenorItemInfo.self, forKey: .tinyGIF)
        self.gif = try container.decodeIfPresent(TenorItemInfo.self, forKey: .gif)
        self.mediumGIF = try container.decodeIfPresent(TenorItemInfo.self, forKey: .mediumGIF)
        self.nanoGIF = try container.decodeIfPresent(TenorItemInfo.self, forKey: .nanoGIF)
        self.mp4 = try container.decodeIfPresent(TenorItemInfo.self, forKey: .mp4)
        self.nanoMP4 = try container.decodeIfPresent(TenorItemInfo.self, forKey: .nanoMP4)
        self.tinyMP4 = try container.decodeIfPresent(TenorItemInfo.self, forKey: .tinyMP4)
        self.loopedMP4 = try container.decodeIfPresent(TenorItemInfo.self, forKey: .loopedMP4)
        self.nanoWebm = try container.decodeIfPresent(TenorItemInfo.self, forKey: .nanoWebm)
        self.webm = try container.decodeIfPresent(TenorItemInfo.self, forKey: .webm)
        self.tinyWebm = try container.decodeIfPresent(TenorItemInfo.self, forKey: .tinyWebm)
        self.webp = try container.decodeIfPresent(TenorItemInfo.self, forKey: .webp)
    }
}
