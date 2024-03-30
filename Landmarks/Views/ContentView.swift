//
//  ContentView.swift
//  Landmarks
//
//  Created by Sebastian Stoelen on 29/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarksList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
