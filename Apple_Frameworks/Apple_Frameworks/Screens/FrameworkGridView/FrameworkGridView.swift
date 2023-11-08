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
        
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns){
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        FrameworkTitleView(framework: framework)
                        
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
//                            .onTapGesture {
//                                viewModel.selectedFramework = framework
//                            }
                    }
                    
                }
                .navigationTitle("Frameworks")
                .navigationDestination(for: Framework.self) { framework in
                    FrameworkDetailview(framework: framework)
                }
//                .fullScreenCover(isPresented: $viewModel.isShowingDetailView){
//                    FrameworkDetailview(
//                        framework: viewModel.selectedFramework ?? MockData.sampleFramework,
//                        isShowingDetailView: $viewModel.isShowingDetailView)
//                }
            }
        }
        
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

