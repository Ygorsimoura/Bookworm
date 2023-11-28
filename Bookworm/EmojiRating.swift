//
//  EmojiRating.swift
//  Bookworm
//
//  Created by Ygor Simoura on 25/11/23.
//

import SwiftUI

struct EmojiRating: View {
    let rating: Int
    var body: some View {
        switch rating {
        case 1:
            VStack {
                Image(systemName: "seal.fill")
                    .foregroundColor(.white)
                    .font(.headline)
                Text("Limestone")
                    .font(.system(size: 10))
            }
            .frame(width: 60, height: 60)
            
        case 2:
            VStack{
                Image(systemName: "capsule.fill")
                    .foregroundColor(.gray)
                    .font(.headline)
                Text("Granite")
                    .font(.system(size: 10))
            }
            .frame(width: 60, height: 60)
            
        case 3:
            VStack{
                Image(systemName: "rectangle.portrait.fill")
                    .foregroundColor(Color(red: 1.0, green: 0.8, blue: 0.8))
                    .font(.headline)
                Text("Quartz")
                    .font(.system(size: 10))
            }
            .frame(width: 60, height: 60)
            
        case 4:
            VStack{
                Image(systemName: "suit.diamond.fill")
                    .foregroundColor(.red)
                    .font(.headline)
                Text("Ruby")
                    .font(.system(size: 10))
            }
            .frame(width: 60, height: 60)
            
        default:
            VStack{
                Image(systemName: "diamond.fill")
                    .foregroundColor(.cyan)
                    .font(.headline)
                Text("Diamond")
                    .font(.system(size: 10))
            }
            .frame(width: 60, height: 60)
        }
    }
}

#Preview {
    EmojiRating(rating: 1)
}
