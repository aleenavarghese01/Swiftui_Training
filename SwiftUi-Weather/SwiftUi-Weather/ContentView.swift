//
//  ContentView.swift
//  SwiftUi-Weather
//
//  Created by Aleena Varghese on 06/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: $isNight)
            VStack{
                cityTextView(cityName: "Cupertino, CA")
                
                mainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                      temperature: 76)
                
                HStack(spacing: 20){
                    WeatherDayView(dayofWeek: "Tue",
                                   imageName: "cloud.sun.fill",
                                   temperature: 70)
                    
                    WeatherDayView(dayofWeek: "Wed",
                                   imageName: "sun.max.fill",
                                   temperature: 88)
                    
                    WeatherDayView(dayofWeek: "Thurs",
                                   imageName: "cloud.sun.fill",
                                   temperature: 70)
                    
                    WeatherDayView(dayofWeek: "Fri",
                                   imageName: "wind.snow",
                                   temperature: 55)
                    
                    WeatherDayView(dayofWeek: "Sat",
                                   imageName: "cloud.bolt.fill",
                                   temperature: 60)
                }
                Spacer()
                
                Button(){
                    isNight.toggle()
                } label: {
                    weatherButton(title: "Change Day Time",
                                  textColor:  .blue,
                                  backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}


