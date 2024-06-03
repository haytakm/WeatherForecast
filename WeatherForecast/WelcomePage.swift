//
//  WelcomePage.swift
//  WeatherForecast
//
//  Created by Hayta on 3.06.2024.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                .foregroundStyle(.tint)
                Image(systemName: "sun.rain.fill")
                    .font(.system(size: 70))
                    .foregroundStyle(.yellow)
            }
            
            Text("Weather App")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.semibold)
                .padding(.trailing)
    
            Text("New day")
                .font(.title2)
                
            
        }
        
        .padding()
        
    }
}

#Preview {
    WelcomePage()
}
