//
//  weatherButton.swift
//  SwiftUi-Weather
//
//  Created by Aleena Varghese on 06/11/23.
//

import SwiftUI

struct weatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}

#Preview {
    weatherButton(title: "Change Day Time",
                  textColor:  .blue,
                  backgroundColor: Color.white)
}
