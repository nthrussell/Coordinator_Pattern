//
//  HomeViewController.swift
//  Coordinator_Pattern
//
//  Created by russel on 18/9/24.
//

import UIKit

class HomeViewController: BindViewController<HomeView, HomeViewModel> {
    weak var coordinator: HomeCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.navigationBar.topItem?.title = "Pokedex"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigate()
    }
    
    func navigate() {
        print("navigate clicked")
        rootView.onTap = { [weak self] url in
            guard let self = self else { return }
            print("onTap clicked")
            if let coordinator = coordinator {
                coordinator.navigateToDetailScreen(url: url)
            } else {
                print("Could not find coordinator")
            }
        }
    }
}
