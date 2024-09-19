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
    }
    
    func getAllFavourites() {
        let allData = favouriteStorageService.getAllFavourites()
        detailData = allData
    }
    
    func deleteFavourite(at index: Int) {
        let data = detailData[index]
        favouriteStorageService.delete(data: data)
        detailData.remove(at: index)
    }
}
