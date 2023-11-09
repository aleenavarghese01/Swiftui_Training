//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Acabes International on 09/11/23.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject{
    
    
    @Published  var scannedCode: String = ""
    //    @published  var isShowingAlert = false
    @Published  var alertItem: AlertItem?
    
    
    var statusText: String{
        return scannedCode.isEmpty ? "Not Yet Scnned" : scannedCode
        // in swiftui if there is only one line we can vommit return keyword
    }
    
    var statusTextColor: Color{
        scannedCode.isEmpty ? .red : .green
    }
}
