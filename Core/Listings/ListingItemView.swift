//
//  ListingView.swift
//  AirbnbTutorial
//
//  Created by Chukwudi Mbanefo Udechukwu on 19/03/2025.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing1",
        "listing2",
        "listing3",
        "lroom"
    ]
    
    var body: some View {
        VStack(spacing: 8){
            //images (rectangle placeholder for now)
            ListingImageCarousel()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //listing details
            HStack(alignment: .top){
                // details
                VStack(alignment: .leading) {
                    Text ("Miami, Florida")
                        .foregroundStyle(.black)
                    
                    Text ("12 mi away")
                        .foregroundStyle(.gray)
                    Text  ("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack {
                        Text ("$567")
                            .fontWeight(.semibold)
                        Text ("night")
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                // rating
                
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
            
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
