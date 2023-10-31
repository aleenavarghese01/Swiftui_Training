//
//  iTourApp.swift
//  iTour
//
//  Created by Aleena Varghese on 30/10/23.
//

import SwiftData
import SwiftUI

@main
struct iTourApp: App {
//    @StateObject private var datacontroller = dataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
//                .environment(\.managedObjectContext, datacontroller.container.viewContext)
        }
        .modelContainer(for: Destination.self)
    }
}
