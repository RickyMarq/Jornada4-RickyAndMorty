//
//  EpisodeView.swift
//  Jornada4
//
//  Created by Henrique Marques on 18/11/24.
//

import SwiftUI

struct EpisodeView: View {
    
    @StateObject var viewModel = EpisodeViewModel()
    
    var body: some View {
        NavigationStack {
            List(viewModel.episodeResult) { episode in
                NavigationLink(destination: EpisodeDetailView(episode: episode)) {
                    VStack(alignment: .leading) {
                        Text(episode.name)
                            .font(.headline)
                        
                        Text("Air Date: \(episode.airDate)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        
                        Text("Episode: \(episode.episode)")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                    }
                }
            }
        }
        .navigationTitle("Episódios")
        .onAppear {
            viewModel.getData()
        }
    }
}

#Preview {
    EpisodeView()
}
