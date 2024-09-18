//
//  DetailViewController.swift
//  Coordinator_Pattern
//
//  Created by russel on 18/9/24.
//

import UIKit
import Combine

class DetailViewController: BindViewController<DetailView, DetailViewModel> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Loader.show()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        Loader.hide()
    }
    
    override var hidesBottomBarWhenPushed: Bool {
        get { navigationController?.visibleViewController == self }
        set { super.hidesBottomBarWhenPushed = newValue }
    }
}
