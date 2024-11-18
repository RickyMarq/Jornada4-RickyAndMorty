//
//  EpisodeViewModel.swift
//  Jornada4
//
//  Created by Henrique Marques on 18/11/24.
//

import Foundation

class EpisodeViewModel: ObservableObject {
    
    private var services = Service()
    @Published var episodeResult: [EpisodeResult] = []
    
    
    func getData() {
        services.getEpisodes { result in
            
            switch result {
            case .success(let success):
                DispatchQueue.main.async {
                    self.episodeResult = success.results
                }
            case .failure(let failure):
                print(failure)
            }
        }
    }
}
