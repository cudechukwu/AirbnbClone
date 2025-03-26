//
//  ListingImageCarousel.swift
//  AirbnbTutorial
//
//  Created by Chukwudi Mbanefo Udechukwu on 22/03/2025.
//

import SwiftUI

struct ListingImageCarousel: View {
    var images = [
        "listing1",
        "listing2",
        "listing3",
        "lroom"
    ]

    var body: some View {
        TabView{
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)

    }
}

#Preview {
    ListingImageCarousel()
}
