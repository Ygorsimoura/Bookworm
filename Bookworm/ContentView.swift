//
//  ContentView.swift
//  Bookworm
//
//  Created by Ygor Simoura on 24/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("Notes") private var notes = ""
    @AppStorage("Another note") private var  anotherNotes = ""
    
    
    var body: some View {
        NavigationStack{
            Form{
                Section {
                    TextField("Enter your text here", text: $notes , axis: .vertical)
                        .textFieldStyle(.plain)
                        .padding()
                    .navigationTitle("Notes")
                }
                
                Section {
                    TextField("Another text", text: $anotherNotes , axis: .vertical)
                        .textFieldStyle(.plain)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
