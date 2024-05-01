//
//  AppGroup.swift
//  AppStoreClone
//
//  Created by Фараби Иса on 27.04.2024.
//

import Foundation

struct AppGroup: Decodable {
    let feed: Feed
}

struct Feed: Decodable {
    let title: String
    let results: [FeedResult]
}

struct FeedResult: Decodable {
    let id, name, artistName, artworkUrl100: String
}
