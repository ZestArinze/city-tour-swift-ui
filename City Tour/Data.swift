//
//  Data.swift
//  City Tour
//
//  Created by Arinze Anakor on 21/06/2020.
//  Copyright © 2020 ZestMade. All rights reserved.
//

import Foundation

let cityData: [City] = load("cities.json")

func load<T:Decodable>(_ filename:String, as type:T.Type = T.self) -> T {
    let data:Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {fatalError("Could not find \(filename) in main bundle.")}
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Could not parse \(filename) as \(T.self): \n\(error)")
    }
    
}
