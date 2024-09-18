//
//  FavouriteViewModel.swift
//  Coordinator_Pattern
//
//  Created by russel on 18/9/24.
//

import Foundation
import Combine

class FavouriteViewModel {
    var favouriteStorageService: FavouriteStorageService
    
    @Published var detailData = [PokemonDetailModel]()
    
    init(favouriteStorageService: FavouriteStorageService = DefaultFavouriteStorageService()) {
        self.favouriteStorageService = favouriteStorageService
        
        getAllFavourites()
    }
    
    func getAllFavourites() {
        let allData = favouriteStorageService.getAllFavourites()
        detailData = allData
    }
    
    func deleteFavourite(data: PokemonDetailModel) {
        favouriteStorageService.delete(data: data)
    }
}
