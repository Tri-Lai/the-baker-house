//
//  helper.swift
//  the baker house
//
//  Created by Trí Lai on 04/08/2023.
//

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
            categoryIconList.append("cup-cake-icon")
            
        default: // Moon cake
            categoryIconList.append("moon-cake-icon")
        }
    }
    
    return categoryIconList
}
