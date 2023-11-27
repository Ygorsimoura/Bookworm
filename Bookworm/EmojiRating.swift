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
            Text("☹️")
            
        case 2:
            Text("🙁")
            
        case 3:
            Text("😐")
            
        case 4:
            Text("🙂")
            
        default:
            Text("😃")
        }
    }
}

#Preview {
    EmojiRating(rating: 3)
}
