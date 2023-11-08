//
//  FrameworkDetailview.swift
//  Apple_Frameworks
//
//  Created by Acabes International on 08/11/23.
//

import SwiftUI

struct FrameworkDetailview: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isshowingSafariView:Bool = false
    
    var body: some View {
        VStack{

           
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isshowingSafariView = true
            }label: {
               Label("Learn More", systemImage: "book.fill")
                    
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
//            .foregroundColor(.yellow)
//            .buttonBorderShape(.capsule)
            .tint(.red)
            
            Spacer()
        }
        
        .fullScreenCover(isPresented: $isshowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailview(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark)
                                  
}
