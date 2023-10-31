//
//  dataController.swift
//  coreDataPractise
//
//  Created by Aleena Varghese on 30/10/23.
//

import CoreData
import Foundation
class dataController: ObservableObject{
    let container = NSPersistentContainer(name: "coreDataPractise")
    init(){
        container.loadPersistentStores { description, error in
            if let error = error{
                print("Core data failed to load : \(error.localizedDescription)")
            }
        }
    }
}



