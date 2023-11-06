//
//  WeatherDayView.swift
//  SwiftUi-Weather
//
//  Created by Aleena Varghese on 06/11/23.
//

import SwiftUI

struct WeatherDayView: View {
    
    var dayofWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack{
            Text(dayofWeek)
                .font(.system(size: 16,weight: .medium,design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)°")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}

#Preview {
    WeatherDayView(dayofWeek: "", imageName: "", temperature: 0)
}
