//
//  TenorRepository.swift
//  
//
//  Created by Sagar on 6/29/24.
//

import Foundation

public protocol TenorRepository : AnyObject {
    func getCategories(key : String?, completion : @escaping (_ categoryList : TenorCategoryList?)->())
    func getTrendingGifs(key : String?, limit : Int?, pos : String?, completion : @escaping (_ tenorResult : TenorResults?)->())
    func getTrendingTags(key : String?, limit : Int?, completion : @escaping (_ trendingTerms : TenorTrendingTerm?)->())
    func searchGifs(key : String?, searchKey : String?, limit : Int?, pos : String?, completion : @escaping (_ tenorResult : TenorResults?)->())
    func getSearchSuggestions(key : String?, searchKey : String?, limit : Int?, pos : String?, completion : @escaping (_ suggestions : TenorTrendingTerm?)->())
    func getAutocompleteTags(key : String?, query : String?, limit : Int?, completion : @escaping (_ autocompleteResults : TenorTrendingTerm?)->())
}
