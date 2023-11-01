//
//  ContentView.swift
//  AsyncImage
//
//  Created by Aleena Varghese on 01/11/23.
//

import SwiftUI

struct ContentView: View {
    
    private let photoURL = URL(string: "https://picsum.photos/256")
    private let noPhotoURL = URL(string: "https://picsum.photos/256.")
    
    var body: some View {
        
        GeometryReader { geometry in
            Text("Async Image")
                .font(.system(size: 40))
                .padding(.horizontal, 50)
            HStack {
                
                Spacer()
                VStack {
                    AsyncImage(url: photoURL ){ phase in
                        if let image = phase.image {
                            image
                                .resizable()
                                .frame(width: geometry.size.width * 0.50)
                                .aspectRatio(contentMode: .fit)
                        } else if phase.error != nil {
                            Image(systemName: "questionmark.diamond")
                                .imageScale(.large)
                        } else {
                            ProgressView()
                        }
                        
                    }
                }
                
                Spacer()
                VStack {
                    AsyncImage(url: noPhotoURL ){ phase in
                        if let image = phase.image {
                            image
                                .resizable()
                                .frame(width: geometry.size.width * 0.50)
                                .aspectRatio(contentMode: .fit)
                        } else if phase.error != nil {
                            Image(systemName: "questionmark.diamond")
                                .frame(width: geometry.size.width * 0.50)
                                .imageScale(.large)
                            Text("There was an error loading the image.")
                        } else {
                            ProgressView()
                        }
                        
                    }
                }
                Spacer()
            }
            .padding(.vertical, 100)
        }
    }
}

#Preview {
    ContentView()
}
