//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Julio Rodriguez on 3/1/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
