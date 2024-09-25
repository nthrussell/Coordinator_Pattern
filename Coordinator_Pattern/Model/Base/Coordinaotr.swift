//
//  Coordinaotr.swift
//  Coordinator_Pattern
//
//  Created by russel on 18/9/24.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    func start()
}
