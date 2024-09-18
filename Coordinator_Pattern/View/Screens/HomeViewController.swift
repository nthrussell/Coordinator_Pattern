//
//  HomeViewController.swift
//  Coordinator_Pattern
//
//  Created by russel on 18/9/24.
//

import UIKit

class HomeViewController: BindViewController<HomeView, HomeViewModel> {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.navigationBar.topItem?.title = "Pokedex"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        navigate()
    }
    
    func navigate() {
        rootView.onTap = { [weak self] url in
            guard let self = self else { return }
            let viewModel = DetailViewModel(url: url)
            let view = DetailView(with: viewModel)
            let vc = DetailViewController(with: view, and: viewModel)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
