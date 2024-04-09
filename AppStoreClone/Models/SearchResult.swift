//
//  SearchResult.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 09.04.2024.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
}

struct Result: Decodable {
    let trackName: String
    let primaryGenreName: String
    var averageUserRating: Float?
}
