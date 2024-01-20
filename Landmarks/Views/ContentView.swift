//
//  ContentView.swift
//  Landmarks
//
//  Created by Julio Rodriguez on 2/1/24.
//

import SwiftUI

struct ContentView: View {
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}

