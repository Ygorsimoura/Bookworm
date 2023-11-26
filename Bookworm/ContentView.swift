//
//  ContentView.swift
//  Bookworm
//
//  Created by Ygor Simoura on 24/11/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query var book: [Book]
    
    @State private var showingAddScreen = false
    
    var body: some View {
        NavigationStack{
            Text("Count \(book.count)")
                .navigationTitle("Bookworm")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button("Add Book", systemImage: "plus") {
                            showingAddScreen.toggle()
                        }
                    }
                }
                .sheet(isPresented: $showingAddScreen) {
                    AddBook()
                }
        }
    }
}

#Preview {
    ContentView()
}
