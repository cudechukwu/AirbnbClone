//
//  ExploreService.swift
//  AirbnbTutorial
//
//  Created by Chukwudi Mbanefo Udechukwu on 06/04/2025.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
