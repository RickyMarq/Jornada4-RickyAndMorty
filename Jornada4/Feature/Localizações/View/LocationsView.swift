//
//  LocationsView.swift
//  Jornada4
//
//  Created by Henrique Marques on 18/11/24.
//

import SwiftUI

struct LocationsView: View {
    
    @StateObject var viewModel = LocationViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.locationResult) { location in
                VStack(alignment: .leading, spacing: 5) {
                    Text(location.name)
                        .font(.headline)
                    
                    Text("Type: \(location.type)")
                        .font(.subheadline)
                    
                    Text("Dimension: \(location.dimension)")
                        .font(.subheadline)
                }
                .padding(.vertical, 5)
            }
            .navigationTitle("Localizações")
        }
        .onAppear {
            viewModel.getData()
        }
    }
}

#Preview {
    LocationsView()
}
