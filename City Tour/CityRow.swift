//
//  CityRow.swift
//  City Tour
//
//  Created by Arinze Anakor on 21/06/2020.
//  Copyright © 2020 ZestMade. All rights reserved.
//

import SwiftUI

struct CityRow: View {
    
    var continent: String
    var cities: [City]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(self.continent)
                .font(.title)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top) {
                    ForEach (self.cities, id: \.self.name) { city in
                        NavigationLink(destination: CityDetail(city: city)) {
                            CityItem(city: city)
                                .frame(width: 300)
                                .padding(.trailing, 30)
                        }
                    }
                }
            }
        }
    }
}

struct CityRow_Previews: PreviewProvider {
    static var previews: some View {
        CityRow(continent: "Africa", cities: cityData)
    }
}
