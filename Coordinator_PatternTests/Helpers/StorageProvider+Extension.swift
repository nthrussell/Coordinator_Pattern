//
//  StorageProvider+Extension.swift
//  Coordinator_Pattern
//
//  Created by russel on 19/9/24.
//

import Foundation
import CoreData

@testable import Coordinator_Pattern

extension StorageProvider {
    func saveData(data: PokemonDetailModel) {
        _ = data.mapToEntity(persistentContainer.viewContext)
        saveContext()
    }
}

extension StorageProvider {
    func deleteData(data: PokemonDetailModel) {
        delete(name: data.name)
    }
}
