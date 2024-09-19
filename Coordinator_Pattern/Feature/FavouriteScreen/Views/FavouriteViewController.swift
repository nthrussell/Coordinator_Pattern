//
//  FavouriteViewController.swift
//  Coordinator_Pattern
//
//  Created by russel on 18/9/24.
//

import UIKit
import CoreData

class FavouriteViewController: BindViewController<FavouriteView, FavouriteViewModel> {
    weak var coordinator: FavouriteCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.navigationBar.topItem?.title = "My Favourites"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        viewModel.getAllFavourites()
    }
}
