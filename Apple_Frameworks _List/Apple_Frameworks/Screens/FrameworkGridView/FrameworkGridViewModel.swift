//
//  FrameworkGridViewModel.swift
//  Apple_Frameworks
//
//  Created by Acabes International on 08/11/23.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    
    
    @Published var isShowingDetailView = false
    
    
    let columns: [GridItem]  = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
}


