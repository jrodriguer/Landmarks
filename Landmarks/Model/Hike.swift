//
//  Hike.swift
//  Landmarks
//
//  Created by Julio Rodriguez on 6/1/24.
//

import Foundation
import SwiftUI

struct Hike: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var distance: Double
    var difficulty: String
    var observations: [Observation]
    
    static var formatter = LengthFormatter()


        var distanceText: String {
            Hike.formatter
                .string(fromValue: distance, unit: .kilometer)
        }


        struct Observation: Codable, Hashable {
            var distanceFromStart: Double


            var elevation: Range<Double>
            var pace: Range<Double>
            var heartRate: Range<Double>
        }
}
