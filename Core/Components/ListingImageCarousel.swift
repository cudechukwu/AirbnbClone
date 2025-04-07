//
//  ListingImageCarousel.swift
//  AirbnbTutorial
//
//  Created by Chukwudi Mbanefo Udechukwu on 22/03/2025.
//

import SwiftUI

struct ListingImageCarousel: View {
    let listing: Listing

    var body: some View {
        TabView{
            ForEach(listing.imageURLs, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)

    }
}

#Preview {
    ListingImageCarousel(listing: DeveloperPreview.shared.listings[0]    )
}
