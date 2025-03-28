//
//  ListingDetailView.swift
//  AirbnbTutorial
//
//  Created by Chukwudi Mbanefo Udechukwu on 22/03/2025.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    var images = [
        "listing1",
        "listing2",
        "listing3",
        "lroom"
    ]
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView{
            
            ZStack (alignment: .topLeading) {
                ListingImageCarousel()
                    .frame(height: 320)
                
                Button{
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                }
            }
            
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading) {
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                        
                        Text("4.86")
                        
                        Text(" - ")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    
                    Text("Miami, Florida")
                }
            }
            .padding(.leading, 12)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider ()
            
            // host info view
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Entire villa hosted by John Smith")
                        .font(.headline)
                        .frame(maxWidth: 230, alignment: .leading)
                    
                    HStack{
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("3 baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                Spacer()
                // Host image
                
                Image("Chukwudi")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            // listing features
            
            VStack(alignment: .leading, spacing: 16){
                ForEach(0 ..< 2) { feature in
                    HStack(spacing: 12) {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading) {
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhosts are experience, highly rated hosts who are committed to providing greats stars for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }
            //.frame(maxWidth: .infinity, alignment: .leading)
            .padding()
            
            Divider()
            
            // Where you'll sleep
            
            // bedrooms view
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll sleep")
                    .font(.headline)
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 16){
                        ForEach(1 ..< 5) { bedroom in
                            VStack{
                                Image (systemName: "bed.double")
                                
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            
            // What to expect
            VStack (alignment: .leading, spacing: 16) {
                Text("What this place offers")
                    .font(.headline)
                
                ForEach (0 ..< 5) { feature in
                    HStack {
                        Image(systemName: "wifi")
                        
                        Text("Wifi")
                            .font(.footnote)
                        
                        Spacer()
                    }
                }
                
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll be")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 64)
        .overlay(alignment: .bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                
                HStack{
                    VStack (alignment: .leading){
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Total before taxes")
                            .font(.footnote)
                        
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    Spacer()
                    
                    Button{
                        
                    } label: {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
            }
            .padding()
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView()
}
