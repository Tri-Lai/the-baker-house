//
//  BakerShop.swift
//  the baker house
//
//  Created by Trí Lai on 28/07/2023.
//

/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Lai Nghiep Tri
  ID: s3799602
  Created  August 7th, 2023
  Last modified: August 7th, 2023
  Acknowledgement: iOS course COSC2659 (lectures and tutorials), Apple Documentation
*/

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

    var foods: [Food]
    
//    var coordinates: Coordinate
    var location = CLLocationCoordinate2D()
}

struct Coordinate: Codable {
    var latitude: Double
    var longtitude: Double
}

struct Food: Identifiable, Codable {
    var id = UUID()
    var imageName: String
}

enum Filter: String {
    static var allFilters: [Filter] {
        return [.Pastry, .Cake, .Cupcake, .Moon_Cake,. Gourmet, .Wedding,
                .High_Rating, .Normal_Rating, .Low_Rating]
    }
    
    // -- Category --
    case Pastry
    case Cake
    case Cupcake
    case Gourmet
    case Wedding
    case Moon_Cake
    
    // -- Rating --
    case High_Rating
    case Normal_Rating
    case Low_Rating
}
