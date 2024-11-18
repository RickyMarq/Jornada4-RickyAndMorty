//
//  HomeDetailView.swift
//  Jornada4
//
//  Created by Henrique Marques on 18/11/24.
//

import SwiftUI

struct HomeDetailView: View {
    
    // Essa view, irá receber dados.
    var character: ResultData
    
    var body: some View {
        ScrollView {
            
            VStack(spacing: 16) {
                AsyncImage(url: URL(string: character.image ?? "")) { image in
                    image
                        .resizable()
                        .scaledToFit()
                } placeholder: {
                    ZStack {
                        Color(.systemGray5)
                        ProgressView()
                            .tint(.gray)
                    }
                }
                .frame(maxWidth: 200, maxHeight: 200)
                .clipShape(Circle())
                .shadow(radius: 10)
                .padding(.top, 24)
                
                Text(character.name ?? "")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                
                Text("Status: \(character.status ?? "")")
                    .font(.headline)
                    .foregroundColor(character.status == "Alive" ? .green : .red)
                
                VStack(alignment: .leading, spacing: 8) {
                    if let species = character.species {
                        Text("Species: \(species)")
                            .font(.subheadline)
                    }
                    
                    if let origin = character.origin?.name {
                        Text("Origin: \(origin)")
                            .font(.subheadline)
                    }
                    
                    if let gender = character.gender {
                        Text("Gender: \(gender)")
                            .font(.subheadline)
                    }
                    
                    if let episode = character.episode {
                        Text("Apperead in \(episode.count) episode(s)")
                            .font(.subheadline)
                    }
                }
                .padding(.horizontal, 16)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Spacer()
            }
        }
        .navigationTitle(character.name ?? "Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    HomeDetailView(character: ResultData(
        id: 1,
        name: "Rick Sanchez",
        status: "Alive",
        species: "Human",
        type: "",
        origin: Origin(name: "Earth"),
        gender: "Male",
        image: "https://rickandmortyapi.com/api/character/avatar/1.jpeg",
        episode: ["https://rickandmortyapi.com/api/episode/1", "https://rickandmortyapi.com/api/episode/2"],
        url: "https://rickandmortyapi.com/api/character/1",
        created: "2017-11-04T18:48:46.250Z"
    ))
}
