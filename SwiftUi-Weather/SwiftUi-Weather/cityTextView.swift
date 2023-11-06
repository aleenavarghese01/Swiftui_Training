//
//  cityTextView.swift
//  SwiftUi-Weather
//
//  Created by Aleena Varghese on 06/11/23.
//

import SwiftUI

struct cityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(Color.white)
            .padding()
    }
}

#Preview {
    cityTextView(cityName: "Cupertino, CA")
}
