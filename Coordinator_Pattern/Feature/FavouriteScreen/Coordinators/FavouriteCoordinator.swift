//
//  FavouriteCoordinator.swift
//  Coordinator_Pattern
//
//  Created by russel on 18/9/24.
//

import UIKit

class FavouriteCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    let navigationController: BaseNavigationController = .init()
    
    func start() {
        let favouriteViewModel = FavouriteViewModel()
        let favouriteView = FavouriteView(with: favouriteViewModel)
        let favouriteViewController = FavouriteViewController(with: favouriteView, and: favouriteViewModel)
        favouriteViewController.coordinator = self
        
        navigationController.setViewControllers([favouriteViewController], animated: true)
    }
}
