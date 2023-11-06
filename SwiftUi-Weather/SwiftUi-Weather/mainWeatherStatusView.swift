//
//  mainWeatherStatusView.swift
//  SwiftUi-Weather
//
//  Created by Aleena Varghese on 06/11/23.
//

import SwiftUI

struct mainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)")
                .font(.system(size: 70,weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}

#Preview {
    mainWeatherStatusView(imageName: "cloud.sun.fill",
                          temperature: 76)
}
