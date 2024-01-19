//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Julio Rodriguez on 19/1/24.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        Text(categoryName)
            .font(.headline)
        
        HStack(alignment: .top, spacing: 0) {
            ForEach(items) { landmark in
                Text(landmark.name)
            }
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    return CategoryRow(
        categoryName: landmarks[0].category.rawValue,
        items: Array(landmarks.prefix(3))
    )
}