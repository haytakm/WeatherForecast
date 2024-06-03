//
//  FeaturesPage.swift
//  WeatherForecast
//
//  Created by Hayta on 3.06.2024.
//

import SwiftUI

struct FeaturesCard: View {
    
    let iconName: String
    let description: String
    
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .font(.largeTitle)
            Text(description)
        }
        .padding()
        .background(.tint,in:RoundedRectangle(cornerRadius: 6))
        .foregroundStyle(.white)
        
    }
}

#Preview {
    FeaturesCard(iconName: "person.2.crop.square.stack.fill", description: "A multiline description about a feature paired with the image on the left.")
}
