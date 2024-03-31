//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Sebastian Stoelen on 31/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarksList()
            .frame(minWidth: 700, minHeight: 300)
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
