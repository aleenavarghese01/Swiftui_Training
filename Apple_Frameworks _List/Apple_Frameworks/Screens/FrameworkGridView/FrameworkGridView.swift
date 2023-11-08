//
//  FrameworkGridView.swift
//  Apple_Frameworks
//
//  Created by Acabes International on 08/11/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        
        NavigationView {
            List{
                ForEach(MockData.frameworks, id: \.id) { framework in
                    NavigationLink(destination: FrameworkDetailview(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)){
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            
            .navigationTitle("Frameworks")
            }
        .accentColor(Color(.label))
        }
    }
    



#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

