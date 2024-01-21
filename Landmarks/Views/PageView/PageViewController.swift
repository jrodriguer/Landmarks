//
//  PageViewController.swift
//  Landmarks
//
//  Created by Julio Rodriguez on 20/1/24.
//

import SwiftUI
import UIKit

/// The page view controller stores an array of Page instances, which must be a type of View.
/// These are the pages you use to scroll between landmarks.
struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]
    
    ///
    /// Method that creates a UIPageViewController with the desired configuration.
    func makeUIViewController(context: Context) -> UIPageViewController {
        let pageViewController = UIPageViewController(
            transitionStyle: .scroll,
            navigationOrientation: .horizontal)
        
        return pageViewController
    }
    
    ///
    /// setViewControllers(_:direction:animated:) to provide a view controller for display.
    func updateUIViewController(_ pageViewController: UIPageViewController, context: Context) {
            pageViewController.setViewControllers(
                [UIHostingController(rootView: pages[0])], direction: .forward, animated: true)
        }
}
