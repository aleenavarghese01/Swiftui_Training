//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Acabes International on 09/11/23.
//

import SwiftUI

struct BarcodeScannerView: View {
    
@StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    ScannerView(scannedCode: $viewModel.scannedCode,
                                alertItem: $viewModel.alertItem)
                        .frame(maxWidth: .infinity, maxHeight: 300)
                    Spacer()
                        .frame(height: 60)
                        
                    Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                        .font(.title)
                    
                    Text(viewModel.statusText)
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(viewModel.statusTextColor)
                        .padding()
                    
//                    Button{
//                        isShowingAlert = true
//                    } label: {
//                        Text("Tap me")
//                    }
                    
                }
                
                .navigationTitle("Barcode Scanner")
//                .alert(isPresented: $isShowingAlert, content: {
//                    Alert(title: Text("Test"),
//                          message: Text("This is a test"),
//                          dismissButton: .default(Text("0k")))
//                })
                .alert(item: $viewModel.alertItem){ alertItem in
                    Alert(title: Text(alertItem.title),
                          message: Text(alertItem.message),
                          dismissButton: alertItem.dismissButton)
                }
            }
            
        }
    }
}

#Preview {
    BarcodeScannerView()
}
