//
//  FeaturesPage.swift
//  WeatherForecast
//
//  Created by Hayta on 3.06.2024.
//

import SwiftUI

struct FeaturesPage: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Features")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom)
                .padding(.top, 100)
            FeatureCard(iconName: "person.2.crop.square.stack.fill", description: "A multiline description about a feature paired with the image on the left.")
            FeatureCard(iconName: "quote.bubble.fill", description: "Short summary")
            Spacer()
                
        }
    }
}

#Preview {
    FeaturesPage()
}
