//
//  BackgroundView.swift
//  SwiftUi-Weather
//
//  Created by Aleena Varghese on 06/11/23.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
//    var topColor: Color
//    var bottomColor: Color
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [(isNight ? .black : .blue), (isNight ? .gray : .lightBlue)]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
//        
//        ContainerRelativeShape()
//        .fill(isNight ? Color.black.gradient :  Color.blue.gradient)
//            .ignoresSafeArea()
        
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView(isNight: .constant(false))

}
