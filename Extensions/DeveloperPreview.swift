//
//  DeveloperPreview.swift
//  AirbnbTutorial
//
//  Created by Chukwudi Mbanefo Udechukwu on 26/03/2025.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Charleston White",
            ownerImageUrl: "chukwudi",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7580,
            longitude: -80.1936,
            imageURLs: ["listing1", "lroom", "lroom2", "lroom4"],
            address: "100 Chelsea St",
            city: "San Francisco",
            state: "California",
            title: "The Penthouse",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Kenechukwu Udechukwu",
            ownerImageUrl: "chukwudi",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7706,
            longitude: -80.1340,
            imageURLs: ["listing2", "lroom4", "lroom5", "lroom6"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 3.7,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Chukwudi Udechukwu",
            ownerImageUrl: "chukwudi",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7706,
            longitude: -80.1340,
            imageURLs: ["listing3", "lroom7", "lroom5", "lroom8"],
            address: "15 Nile St",
            city: "Los Angeles",
            state: "California",
            title: "Sedora Villa",
            rating: 3.5,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
    )]
}
 
