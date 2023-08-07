//
//  helper.swift
//  the baker house
//
//  Created by Trí Lai on 04/08/2023.
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


// Get the category icon respect to the story category
//
// @Param categories: store's categories
func mapCategory(categories: [String]) -> [String] {
    var categoryIconList = [String]()
    
    categories.forEach { (category) in
        switch category {
        case "Pastry":
            categoryIconList.append("pastry-icon")

        case "Gourmet":
            categoryIconList.append("bread-icon")
            
        case "Cake":
            categoryIconList.append("cake-icon")
            
        case "Wedding":
            categoryIconList.append("wedding-cake-icon")
            
        case "Cupcake":
            categoryIconList.append("cupcake-icon")
            
        default: // Moon cake
            categoryIconList.append("moon-cake-icon")
        }
    }
    
    return categoryIconList
}

// Decode content of JSON file
//
// @Param name: Json file name
//func decodeContentFrom(JsonFile name: String) -> [BakerShop] {
//    if let file = Bundle.main.url(forResource: name, withExtension: nil) {
//        if let data = try? Data(contentsOf: file) {
//            do {
//                let decoder = JSONDecoder()
//                let decodedData = try decoder.decode([BakerShop].self, from: data)
//                return decodedData
//            } catch let error {
//                fatalError("Failed to decode JSON: \(error)")
//            }
//        }
//    } else {
//        fatalError("Couldn't load \(name) file")
//    }
//
//    return [] as [BakerShop]
//}

//var bakerShops = decodeContentFrom(JsonFile: "baker_store.json")
