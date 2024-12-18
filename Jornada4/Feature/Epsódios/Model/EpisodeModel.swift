//
//  EpisodeModel.swift
//  Jornada4
//
//  Created by Henrique Marques on 18/11/24.
//

import Foundation

struct EpisodeModel: Codable {
    let info: Info
    let results: [EpisodeResult]
}

struct EpisodeResult: Codable, Identifiable {
    let id: Int
    let name, airDate, episode: String
    let characters: [String]
    let url: String
    let created: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case airDate = "air_date"
        case episode, characters, url, created
    }
}
