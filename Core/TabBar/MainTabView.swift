//
//  MainTabView.swift
//  AirbnbTutorial
//
//  Created by Chukwudi Mbanefo Udechukwu on 25/03/2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem{ Label("Explore", systemImage: "magnifyingglass")}
            WishlistView()
                .tabItem{ Label("Wishlist", systemImage: "heart")}
            ProfileView()
                .tabItem{ Label("Profile", systemImage: "person")}
        }
    }
}

#Preview {
    MainTabView()
}
