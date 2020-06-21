//
//  CityItem.swift
//  City Tour
//
//  Created by Arinze Anakor on 21/06/2020.
//  Copyright © 2020 ZestMade. All rights reserved.
//

import SwiftUI

struct CityItem: View {
    
    var city: City
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Image(city.featured_image)
                .resizable().renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(alignment: .leading, spacing: 5.0) {
                Text(city.name).foregroundColor(.primary).font(.headline)
                Text(city.description)
                    .foregroundColor(.secondary)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading).lineLimit(2).frame(height: 40.0)
            }
            
            
        }
    }
}

struct CityItem_Previews: PreviewProvider {
    static var previews: some View {
        CityItem(city: cityData[0])
    }
}
