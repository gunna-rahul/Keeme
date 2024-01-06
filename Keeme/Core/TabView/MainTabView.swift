//
//  MainTabView.swift
//  Keeme
//
//  Created by Gunna Rahul on 21/12/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem { Label("Home", systemImage: "house") }
            
            ScheduleView()
                .tabItem { Label("Schedule", systemImage: "calendar") }
            
            FavouritesView()
                .tabItem { Label("Favourites", systemImage: "star") }
        }
        
    }
}

#Preview {
    MainTabView()
}
