//
//  ContentView.swift
//  iTour
//
//  Created by Aleena Varghese on 30/10/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext
    @State private var path = [Destination]()
    @State private var sortOrder = SortDescriptor(\Destination.name)
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack(path: $path){
            DestinationListingView(sort: sortOrder, searchString: searchText)
                .navigationTitle("iTour")
                .navigationDestination(for: Destination.self, destination: EditDestinationView.init)
                .searchable(text: $searchText)
                .toolbar{
                    Button("add", action: addSamples)
                    Button("Add Destination", systemImage: "plus", action: addDestination)
                    
                    Menu("Sort", systemImage: "arrow.up.arrow.down"){
                        Picker("Sort", selection: $sortOrder){
                            Text("Name")
                                .tag(SortDescriptor(\Destination.name))
                            
                            Text("priority")
                                .tag(SortDescriptor(\Destination.priority, order: .reverse))
                            
                            Text("Date")
                                .tag(SortDescriptor(\Destination.date))
                        }
                        
                        .pickerStyle(.inline)
                    }
                }
        }
    }
    func addSamples(){
        let india = Destination(name: "India")
        let china = Destination(name: "China")
        let rome = Destination(name: "Rome")
        
        modelContext.insert(india)
        modelContext.insert(rome)
        modelContext.insert(china)
    }
    
    func addDestination(){
        let destination = Destination()
        modelContext.insert(destination)
        path = [destination]
    }
    
}

