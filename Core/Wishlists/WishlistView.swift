//
//  WishlistView.swift
//  AirbnbTutorial
//
//  Created by Chukwudi Mbanefo Udechukwu on 25/03/2025.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading, spacing: 32){
                VStack (alignment: .leading, spacing: 4){
                    Text ("Log in to view your wishlists")
                        .font(.headline)
                    
                    Text ("You can create, view or edit wishlists once you've logged in")
                        .font(.footnote)
                }
                .padding()
                
                Button {
                    print("Log in")
                } label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 40)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistView()
}
