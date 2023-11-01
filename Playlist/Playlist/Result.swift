//
//  Result.swift
//  Playlist
//
//  Created by Aleena Varghese on 01/11/23.
//

import Foundation
struct Response: Codable{
    var results: [Result]
}

struct Result: Codable{
    var trackId: Int
    var trackName: String
    var collectionName: String
}
