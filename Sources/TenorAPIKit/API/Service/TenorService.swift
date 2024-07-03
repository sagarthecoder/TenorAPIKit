//
//  TenorService.swift
//  
//
//  Created by Sagar on 6/30/24.
//

import Foundation

public class TenorService : TenorRepository, HTTPClient {
    
    public init() {}
    
    public func getCategories(key: String?, completion: @escaping (TenorCategoryList?) -> ()) {
        Task {
            let result = await sendRequest(endpoint: TenorEndPoints.getCategories(key), responseModel: TenorCategoryList.self)
            switch result {
            case .success(let categoryList):
                completion(categoryList)
                break
            case .failure(let error):
                print("Failed to fetch Tenor Categories. Error = \(error.localizedDescription)")
                completion(nil)
                break
            }
        }
    }
    
    public func getTrendingGifs(key: String?, limit: Int?, pos: String?, completion: @escaping (TenorResults?) -> ()) {
        Task {
            let result = await sendRequest(endpoint: TenorEndPoints.getTrendingGifs(key, limit, pos), responseModel: TenorResults.self)
            switch result {
            case .success(let tenorResults):
                completion(tenorResults)
                break
            case .failure(let error):
                print("Failed to fetch Trending Gifs. Error = \(error.localizedDescription)")
                completion(nil)
                break
            }
        }
    }
    
    public func getTrendingTags(key: String?, limit: Int?, completion: @escaping (TenorTrendingTerm?) -> ()) {
        Task {
            let result = await sendRequest(endpoint: TenorEndPoints.getTrendingTags(key, limit), responseModel: TenorTrendingTerm.self)
            switch result {
            case .success(let trendingTags):
                completion(trendingTags)
                break
            case .failure(let error):
                print("Failed to fetch Trending Tags. Error = \(error.localizedDescription)")
                completion(nil)
                break
            }
        }
    }
    
    public func searchGifs(key: String?, searchKey: String?, limit: Int?, pos: String?, completion: @escaping (TenorResults?) -> ()) {
        Task {
            let result = await sendRequest(endpoint: TenorEndPoints.getSearchedGifs(key, searchKey, limit, pos), responseModel: TenorResults.self)
            switch result {
            case .success(let searchResult):
                completion(searchResult)
                break
            case .failure(let error):
                print("Failed to fetch Search Tenor Result. Error = \(error.localizedDescription)")
                completion(nil)
                break
            }
        }
    }
    
    public func getSearchSuggestions(key: String?, searchKey: String?, limit: Int?, pos: String?, completion: @escaping (TenorTrendingTerm?) -> ()) {
        Task {
            let result = await sendRequest(endpoint: TenorEndPoints.getSearchSuggestions(key, searchKey, limit), responseModel: TenorTrendingTerm.self)
            switch result {
            case .success(let suggestions):
                completion(suggestions)
                break
            case .failure(let error):
                print("Failed to fetch Suggestions. Error = \(error.localizedDescription)")
                completion(nil)
                break
            }
        }
    }
    
    public func getAutocompleteTags(key: String?, query : String?, limit: Int?, completion: @escaping (TenorTrendingTerm?) -> ()) {
        Task {
            let result = await sendRequest(endpoint: TenorEndPoints.getAutocompleteTags(key, query, limit), responseModel: TenorTrendingTerm.self)
            switch result {
            case .success(let autoCompleteResults):
                completion(autoCompleteResults)
                break
            case .failure(let error):
                print("Failed to fetch AutoComplete results. Error = \(error.localizedDescription)")
                completion(nil)
                break
            }
        }
    }
    
    
}
