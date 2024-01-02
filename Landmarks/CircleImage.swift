//
//  CircleImage.swift
//  Landmarks
//
//  Created by Julio Rodriguez on 2/1/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
                    .clipShape(Circle())
    }
}

#Preview {
    CircleImage()
}
