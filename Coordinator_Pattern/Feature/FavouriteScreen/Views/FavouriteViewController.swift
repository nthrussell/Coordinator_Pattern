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
        
        viewModel.getAllFavourites()
                        
        let didSaveNotification = NSManagedObjectContext.didSaveObjectsNotification
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(didNewEntrySaved),
                                               name: didSaveNotification,
                                               object: nil)
    }
    
    @objc func didNewEntrySaved() {
        viewModel.getAllFavourites()
        rootView.tableView.reloadData()
    }
}
