 //
//  CityDetail.swift
//  City Tour
//
//  Created by Arinze Anakor on 21/06/2020.
//  Copyright © 2020 ZestMade. All rights reserved.
//

import SwiftUI

struct CityDetail: View {
    
    var city: City
    
    var body: some View {
        List {
            ZStack(alignment: .bottom) {
                Image(city.featured_image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Rectangle()
                    .frame(height: 80)
                    .opacity(0.3)
                    .blur(radius: 10.0)
                
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text(city.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    
                    Spacer()
                }
            }.listRowInsets(EdgeInsets())
            
            Text(city.description)
                .foregroundColor(.primary)
                .font(.body)
                .lineSpacing(12)
                .lineLimit(nil)
                .padding(.top)
                .padding(.bottom)
            
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}

struct CityDetail_Previews: PreviewProvider {
    static var previews: some View {
        CityDetail(city: cityData[2])
    }
}
