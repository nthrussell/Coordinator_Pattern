//
//  UIImageView.swift
//  Coordinator_Pattern
//
//  Created by russel on 18/9/24.
//

import UIKit
import Kingfisher

extension UIImageView {
    func getImage(from url: URL) {
        kf.setImage(with: url)
    }
}
