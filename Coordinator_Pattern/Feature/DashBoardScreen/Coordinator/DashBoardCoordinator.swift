//
//  DashBoardCoordinator.swift
//  Coordinator_Pattern
//
//  Created by russel on 18/9/24.
//

import UIKit

class DashBoardCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    let dashboardController: DashBoardViewController
    private weak var window: UIWindow?
    
    init(with window: UIWindow?) {
        self.window = window
        dashboardController = DashBoardViewController()
        dashboardController.coordiantor = self
    }
    
    func start() {
        let homeCoordinator = HomeCoordinator()
        let favouriteCoordinator = FavouriteCoordinator()
        
        childCoordinators = [
            homeCoordinator,
            favouriteCoordinator
        ]
        
        childCoordinators.forEach({ $0.start() })
        
        let firstVC = homeCoordinator.navigationController
        let secondVC = favouriteCoordinator.navigationController

        firstVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        secondVC.tabBarItem = UITabBarItem(title: "Favourite", image: UIImage(systemName: "star"), tag: 1)
        
        dashboardController.viewControllers = [
            firstVC,
            secondVC
        ]
                
        window?.rootViewController = dashboardController
        window?.makeKeyAndVisible()
    }
}
