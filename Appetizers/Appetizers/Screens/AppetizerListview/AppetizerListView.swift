//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Aleena Varghese on 13/11/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers){ appetizer in
                    AppetizerListCell(appetizer: appetizer)
                }
                .navigationTitle(" 🍟  Appetizers")
            }
            .onAppear{
                viewModel.getAppetizers()
            }
            if viewModel.isLoading {
                LoadingView()
            }
            
        }
            .alert(item: $viewModel.alertitem){ alertItem in
                Alert(title: alertItem.title,
                      message: alertItem.message,
                      dismissButton: alertItem.dismissButton)
            }
        
    }
}

#Preview {
    AppetizerListView()
}

