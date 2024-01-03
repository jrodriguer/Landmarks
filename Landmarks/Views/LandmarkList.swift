//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Julio Rodriguez on 3/1/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, id: \.id) { landmark in
            // Data identifiable.
            // Key path to a property that uniquely identifies each element.
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
