//
//  AppTabView.swift
//  Jornada4
//
//  Created by Henrique Marques on 18/11/24.
//

import SwiftUI

struct AppTabView: View {
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            LocationsView()
                .tabItem {
                    Label("Localizações", systemImage: "location")
                }
            
            EpisodeView()
                .tabItem {
                    Label("Episódios", systemImage: "rectangle.stack")
                }
            
        }
        .tint(.purple)
    }
}

#Preview {
    AppTabView()
}
