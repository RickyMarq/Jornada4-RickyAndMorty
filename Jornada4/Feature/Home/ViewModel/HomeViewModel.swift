//
//  HomeViewModel.swift
//  Jornada4
//
//  Created by Henrique Marques on 18/11/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    private var services = Service()
    @Published var homeResults: [ResultData] = []
    
    func getData() {
        services.getHomeData { result in
            
            switch result {
            case .success(let success):
                DispatchQueue.main.async {
                    self.homeResults = success.results
                }
            case .failure(let failure):
                print(failure)
            }
        }
    }
    
}
