//
//  HomeModel.swift
//  Jornada4
//
//  Created by Henrique Marques on 18/11/24.
//

import Foundation

struct HomeModel: Codable {
    let info: Info
    let results: [ResultData]
}

struct Info: Codable {
    let count, pages: Int
    let next: String
    let prev: String?
}

struct ResultData: Codable, Hashable {
    let id: Int?
    let name: String?
    let status: String?
    let species: String?
    let type: String?
    let origin: Origin?
    let gender: String?
    let image: String?
    let episode: [String]?
    let url: String?
    let created: String?
}

struct Origin: Codable, Hashable {
    let name: String?
}
