//
//  LocationModel.swift
//  Jornada4
//
//  Created by Henrique Marques on 18/11/24.
//

import Foundation

struct LocationModel: Codable {
    let info: Info
    let results: [LocationResult]
}

struct LocationResult: Codable, Identifiable {
    let id: Int
    let name, type, dimension: String
    let residents: [String]
    let url: String
    let created: String
}
