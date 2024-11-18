//
//  Service.swift
//  Jornada4
//
//  Created by Henrique Marques on 18/11/24.
//

import Foundation

class Service {
    
    // MARK: Home
    
    func getHomeData(completion: @escaping (Result<HomeModel, Error>) -> Void) {
        // Obter url para realizar a requisição.
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {return}
        
        // Precisamos definir um pedido a uma url
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {return}
            
            // Transformar os dados
            
            do {
                let jsonDecoder = JSONDecoder()
                let result = try jsonDecoder.decode(HomeModel.self, from: data)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
        }
        .resume()
        
    }
    
    // MARK: Episode
    
    func getEpisodes(completion: @escaping (Result<EpisodeModel, Error>) -> Void) {
        // Obter url para realizar a requisição.
        guard let url = URL(string: "https://rickandmortyapi.com/api/episode") else {return}
        
        // Precisamos definir um pedido a uma url
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {return}
            
            // Transformar os dados
            
            do {
                let jsonDecoder = JSONDecoder()
                let result = try jsonDecoder.decode(EpisodeModel.self, from: data)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
        }
        .resume()
        
    }
    
    // MARK: Locations
    
    func getLocations(completion: @escaping (Result<LocationModel, Error>) -> Void) {
        // Obter url para realizar a requisição.
        guard let url = URL(string: "https://rickandmortyapi.com/api/location") else {return}
        
        // Precisamos definir um pedido a uma url
        
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else {return}
            
            // Transformar os dados
            
            do {
                let jsonDecoder = JSONDecoder()
                let result = try jsonDecoder.decode(LocationModel.self, from: data)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
        }
        .resume()
        
    }
    
}
