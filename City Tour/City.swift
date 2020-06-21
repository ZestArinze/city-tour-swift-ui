//
//  City.swift
//  City Tour
//
//  Created by Arinze Anakor on 21/06/2020.
//  Copyright © 2020 ZestMade. All rights reserved.
//

import SwiftUI

struct City: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var featured_image: String
    var description: String
    var continent: Continent
    
    enum Continent: String, CaseIterable, Codable, Hashable {
        case africa = "Africa"
        case asia = "Asia"
        case europe = "Europe"
        case northAmerica = "North America"
        case southAmerica = "South America"
        case australia = "Australia"
    }
}
