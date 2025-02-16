//
//  DetailCoordinator.swift
//  Coordinator_Pattern
//
//  Created by russel on 18/9/24.
//

import UIKit

class DegtailCoordinator: Coordinator {
    lazy var childCoordinators: [Coordinator] = []
    private weak var navigationController: UINavigationController?

    let url: String

    init (navigationController: UINavigationController?, url: String) {
        self.navigationController = navigationController
        self.url = url
    }
    
    func start() {
        let viewModel = DetailViewModel(url: url)
        let view = DetailView(with: viewModel)
        let detailViewController = DetailViewController(with: view, and: viewModel)
        detailViewController.coordinator = self
        navigationController?.pushViewController(detailViewController, animated: true)
    }
}
