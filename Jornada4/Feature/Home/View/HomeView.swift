//
//  ContentView.swift
//  Jornada4
//
//  Created by Henrique Marques on 18/11/24.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    var columns = [GridItem(.fixed(160), spacing: 24), GridItem(.fixed(160), spacing: 24)]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 24) {
                    ForEach(viewModel.homeResults, id: \.self) { data in
                        NavigationLink(destination: HomeDetailView(character: data)) {
                            
                            VStack(spacing: 8) {
                                AsyncImage(url: URL(string: data.image ?? "")) { image in
                                    image
                                        .resizable()
                                        .scaledToFill()
                                } placeholder: {
                                    ZStack {
                                        Color(.systemGray5)
                                        ProgressView()
                                            .tint(.gray)
                                    }
                                }
                                .frame(width: 140, height: 140)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                                .clipped()
                                
                                VStack(alignment: .leading, spacing: 5)  {
                                    Text(data.name ?? "")
                                        .font(.headline)
                                        .foregroundColor(.primary)
                                        .lineLimit(1)
                                    
                                    Text("Status: \(data.status ?? "")")
                                        .font(.subheadline)
                                        .foregroundColor(data.status == "Alive" ? .green : .red)
                                    
                                    Text("Species: \(data.species ?? "")")
                                        .font(.subheadline)
                                        .foregroundColor(.secondary)
                                }
                                .frame(width: 140, alignment: .leading)
                                
                            }
                            .padding()
                            .frame(width: 160, height: 260)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color(.systemBackground))
                                    .shadow(color: .gray.opacity(0.2), radius: 6, x: 0, y: 2)
                            )
                        }
                    }
                }
                .padding(.horizontal, 16)
            }
            .navigationTitle("Personagens")
            .onAppear {
                viewModel.getData()
            }
        }
    }
}

#Preview {
    HomeView()
}
