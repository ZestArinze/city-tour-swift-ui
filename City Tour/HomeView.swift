//
//  ContentView.swift
//  City Tour
//
//  Created by Arinze Anakor on 21/06/2020.
//  Copyright © 2020 ZestMade. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var continents: [String: [City]] {
        .init(
            grouping: cityData,
            by: {$0.continent.rawValue}
        )
    }
        
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                ForEach(continents.keys.sorted(), id: \.self) { key in
                    CityRow(continent: key.uppercased(), cities: self.continents[key]!).frame(height: 320)
                        .padding(.top)
                        .padding(.bottom)

                }.navigationBarTitle(Text("AWESOME CITIES"))
            }.padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
