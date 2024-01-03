//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Julio Rodriguez on 3/1/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark

    var body: some View {
        HStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    LandmarkRow(landmark: landmarks[0])
}
