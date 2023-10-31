//
//  coreDataPractiseApp.swift
//  coreDataPractise
//
//  Created by Aleena Varghese on 30/10/23.
//

import SwiftUI

@main
struct coreDataPractiseApp: App {
    @StateObject private var datacontroller = dataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, datacontroller.container.viewContext)
        }
    }
}


