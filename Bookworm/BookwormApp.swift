//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Ygor Simoura on 24/11/23.
//

import SwiftUI
import SwiftData

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
