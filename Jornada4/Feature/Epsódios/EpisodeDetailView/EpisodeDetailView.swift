//
//  EpisodeDetailView.swift
//  Jornada4
//
//  Created by Henrique Marques on 18/11/24.
//

import SwiftUI

struct EpisodeDetailView: View {
    
    let episode: EpisodeResult
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(episode.name)
                    .font(.largeTitle)
                    .bold()
                
                Text("Air Date: \(episode.airDate)")
                    .font(.title2)
                
                Text("Episode: \(episode.episode)")
                    .font(.title3)
                
                Divider()
                
                Text("Characters:")
                    .font(.headline)
                
                ForEach(episode.characters, id: \.self) { characthers in
                    Text(characthers)
                        .foregroundColor(.blue)
                    
                }
                
                Divider()
                
                Text("Created at: \(episode.created)")
                    .font(.footnote)
                    .foregroundColor(.gray)
                
            }
            .padding()
        }
    }
}

#Preview {
    EpisodeDetailView(episode: EpisodeResult(id: 0, name: "Ep 1", airDate: "04/09", episode: "1", characters: ["Ricky"], url: "", created: "01/05"))
}
