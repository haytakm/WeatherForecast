//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Hayta on 2.06.2024.
//
let myColor = #colorLiteral(red: 0.8321695924, green: 0.985483706, blue: 0.4733308554, alpha: 1)
let backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(backgroundColor)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    DayForecast(day:"Sunday",high:21,low:14, isRainy: false)
                    DayForecast(day:"Monday",high:18,low:13, isRainy: true)
                    DayForecast(day: "Wednesday", high: 22, low: 18, isRainy: false)
                    DayForecast(day: "Thursday", high: 26, low: 19, isRainy: false)
                    DayForecast(day: "Friday", high: 19, low: 16, isRainy: true)
                    DayForecast(day: "Saturday", high: 23, low: 19, isRainy: false)
                }
            }
            .defaultScrollAnchor(.top)
        }
    }
}

#Preview {
    ContentView()
}

struct DayForecast: View {
    let day: String
    let high: Int
    let low: Int
    let isRainy: Bool
    
    var iconName: String {
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "cloud.sun.fill"
        }
    }
    
    var iconColor: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    var textColor: Color {
        if high > 20 {
            return Color.red
        } else {
            return Color.teal
        }
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundColor(iconColor)
                .font(Font.largeTitle)
                .padding(1)
            Text("High: \(high)")
                .fontWeight(.semibold)
                .foregroundStyle(textColor)
            Text("Low: \(low)")
                .fontWeight(.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding(15)
    }
}
