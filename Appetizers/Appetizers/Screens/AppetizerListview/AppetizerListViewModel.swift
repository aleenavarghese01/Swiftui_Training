//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Aleena Varghese on 13/11/23.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published  var appetizers: [Appetizer] = []
    @Published var alertitem: AlertItem?
    @Published var isLoading: Bool = false
    
    func getAppetizers() {
        
        isLoading = true
        
        NetworkManager.shared.getAppetizers { [self] result in
            DispatchQueue.main.async {
                
                isLoading = false
                
                switch result{
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error{
                    case .invalidResponse:
                        self.alertitem = AlertContext.invalidResponse
                        
                    case .invalidURL:
                        self.alertitem = AlertContext.invalidURL
                        
                    case .invalidData:
                        self.alertitem = AlertContext.invalidData
                        
                    case .unableToComplete:
                        self.alertitem = AlertContext.invalidResponse
                        
                    }
                }
            }
        }
    }
}
