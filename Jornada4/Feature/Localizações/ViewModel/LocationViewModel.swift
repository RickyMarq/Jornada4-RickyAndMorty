//
//  LocationViewModel.swift
//  Jornada4
//
//  Created by Henrique Marques on 18/11/24.
//

import Foundation

class LocationViewModel: ObservableObject {
    
    private var service = Service()
    @Published var locationResult: [LocationResult] = []
    
    func getData() {
        service.getLocations { result in
            
            switch result {
            case .success(let success):
                DispatchQueue.main.async {
                    self.locationResult = success.results
                }
            case .failure(let failure):
                print(failure)
            }
        }
    }
}
