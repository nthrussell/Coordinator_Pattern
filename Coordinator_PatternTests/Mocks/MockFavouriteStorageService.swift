//
//  MockFavouriteStorageService.swift
//  Coordinator_Pattern
//
//  Created by russel on 19/9/24.
//

import XCTest

@testable import Coordinator_Pattern

class MockFavouriteStorageService: FavouriteStorageService {
    var storageProvider: StorageProvider
    
    required init(storageProvider: StorageProvider = StorageProvider(storeType: .inMemory)) {
        self.storageProvider = storageProvider
    }
    
    func getAllFavourites() -> [PokemonDetailModel] {
        let value: [PokemonDetail] = storageProvider.getAllData()
        return value.map { PokemonDetailModel.mapFromEntity($0) }
    }
    
    func delete(data: PokemonDetailModel) {
        storageProvider.delete(name: data.name)
    }
}
