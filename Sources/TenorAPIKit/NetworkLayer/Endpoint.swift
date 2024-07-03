//
//  Endpoint.swift
//  Movie-Explorer-Test
//
//  Created by Sagar on 6/29/24.
//

import Foundation

protocol Endpoint {
    var scheme : String { get }
    var host : String { get }
    var path : String { get }
    var method : RequestMethod { get }
    var header : [String : String]? { get }
    var body : [String : String]? { get }
    var queryItems : [URLQueryItem]? { get }
}
