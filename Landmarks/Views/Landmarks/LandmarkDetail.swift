//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Julio Rodriguez on 3/1/24.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        @Bindable var modelData = modelData

        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                .font(.title)

            HStack {
                Text(landmark.park)
                Spacer()
                Text(landmark.state)
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
            
            Divider()

                Text("About \(landmark.name)")
                .font(.title2)
                Text(landmark.description)
        }
            .padding()
            
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
