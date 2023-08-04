//
//  BakerShop.swift
//  the baker house
//
//  Created by Trí Lai on 28/07/2023.
//

import Foundation
import CoreLocation
import SwiftUI

struct BakerShop: Identifiable {
    var id = UUID()
    var name: String
    var subheading: String
    var description: String
    var address: String
    var rating: Float
    var category: [String]
    
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    var location: CLLocationCoordinate2D
}
