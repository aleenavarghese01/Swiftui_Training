//
//  Alert.swift
//  Appetizers
//
//  Created by Aleena Varghese on 13/11/23.
//

import SwiftUI

struct AlertItem: Identifiable {
let id = UUID()
let title: Text
let message: Text
let dismissButton: Alert.Button
}

struct AlertContext{
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                            message: Text("The data recieved from the server was invalid. Please contact support. "),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Servor Error"),
                                            message: Text("Inavalid response from the server. Please contact support. "),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                            message: Text("There was an issue connecting to the server. if this persists, please contact support. "),
                                            dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server error"),
                                            message: Text("Unable to complete your request at this time. Please check your Internet Connection. "),
                                            dismissButton: .default(Text("OK")))
    
    
}
