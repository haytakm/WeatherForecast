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
        TabView {
            HomeView()
                .tabItem {
                    Label("Weather",systemImage: "sun.dust.circle.fill")
                }
            AboutMe()
                .tabItem{
                    Label("About Me",systemImage: "person.circle.fill")
                }
        }
    }
}


#Preview {
    ContentView()
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
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

struct AboutMe: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("All About")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
                
                Image(systemName:information.image)
                    .foregroundColor(Color.purple)
                
                Text(information.name)
                    .font(.title)
                
                Text("\(information.age)")
                
                Text(information.story)
                    .padding()
                    .font(.callout)
                    .fontWeight(.light)
                
                Text("My hobbies are")
                    .padding()
                    .font(.title2)
                HStack {
                    ForEach(information.hobbies, id: \.self) { hobby in
                        Text(hobby)
                    }
                }
                
                Text("My fav foods are")
                    .font(.title2)
                    .padding()
                HStack {
                    ForEach(information.foods, id: \.self) { food in
                        Text(food)
                    }
                }
                
                Text("Fun facts about me")
                    .font(.title2)
                    .padding()
                HStack {
                    ForEach(information.funFacts, id: \.self)
                    { fact in
                        Text(fact)
                    }
                }
                
            }
        }
        .defaultScrollAnchor(.top)
    }
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

struct Info {
    let image: String
    let name: String
    let story: String
    let age: Int
    let hobbies: [String]
    let foods: [String]
    let colors: String
    let funFacts: [String]
}

let information = Info(image: "person.crop.circle.dashed.circle.fill", name: "Mert", story: "Now my story begins with Swift", age: 29, hobbies: ["Sailing", "Coding", "Drawing"], foods: ["Mantı", "Karnıyarık", "Kapama"], colors: "purple", funFacts: ["I sneeze 10 times in a row"])

