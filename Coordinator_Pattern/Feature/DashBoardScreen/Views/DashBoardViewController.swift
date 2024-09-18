//
//  DashBoardViewController.swift
//  Coordinator_Pattern
//
//  Created by russel on 18/9/24.
//

import UIKit

class DashBoardViewController: UITabBarController {
    var coordiantor : DashBoardCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = .purple
    }
}
