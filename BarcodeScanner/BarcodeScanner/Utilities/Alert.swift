//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Acabes International on 09/11/23.
//

import SwiftUI

struct AlertItem: Identifiable {
let id = UUID()
let title: String
let message: String
let dismissButton: Alert.Button
}

struct AlertContext{
static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                          message: "Something is wrong with the camera. We are unable to capture the input.",
                                          dismissButton: .default(Text("OK")))

static let invalidScannedType = AlertItem(title: "Invalid Device Input",
                                          message: "The value scanned is not valid. This app scans EAN-8 and EAn-13.",
                                          dismissButton: .default(Text("OK")))
}
