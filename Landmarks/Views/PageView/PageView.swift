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
    }
}

#Preview {
    PageView()
}
