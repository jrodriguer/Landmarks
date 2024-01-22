//
//  PageView.swift
//  Landmarks
//
//  Created by Julio Rodriguez on 21/1/24.
//

import SwiftUI

struct PageView: View {
    var pages: [Page]

    var body: some View {
        PageViewController(pages: pages)
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}

#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}
