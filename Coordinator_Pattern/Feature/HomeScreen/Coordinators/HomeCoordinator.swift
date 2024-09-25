//
//  HomeCoordinator.swift
//  Coordinator_Pattern
//
//  Created by russel on 18/9/24.
//

import UIKit

final class HomeCoordinator: Coordinator {
    lazy var childCoordinators: [Coordinator] = []
    let navigationController: BaseNavigationController = .init()
    
    func start() {
        let homeViewModel = HomeViewModel()
        let homeView = HomeView(with: homeViewModel)
        let homeViewController = HomeViewController(with: homeView, and: homeViewModel)
        
        homeViewController.coordinator = self
        
        navigationController.setViewControllers([homeViewController], animated: true)
    }
    
    func navigateToDetailScreen(with url: String) {
        print("navigateToDetailScreen")
        childCoordinators.removeAll()
        childCoordinators.append(DegtailCoordinator(
            navigationController: navigationController,
            url: url)
        )
        childCoordinators.first?.start()
    }
}
