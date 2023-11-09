//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Acabes International on 09/11/23.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    @Binding var scannedCode: String
    @Binding var alertItem: AlertItem?
    
    func makeUIViewController(context: Context) -> ScannervC {
        ScannervC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannervC, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(scannerView: self)
    }
    
    final class Coordinator: NSObject, scannerVCDelegate{
        
        private let scannerView: ScannerView
        
        init(scannerView: ScannerView) {
            self.scannerView = scannerView
        }
        
        func didFind(barcode: String) {
            scannerView.scannedCode = barcode
        }
        
        func didSurface(error: CameraError) {
            switch error{
            case .invalidScannedValue:
                scannerView.alertItem = AlertContext.invalidScannedType
            case .invalidDeviceInput:
                scannerView.alertItem = AlertContext.invalidDeviceInput
            }
        }
    }
}
