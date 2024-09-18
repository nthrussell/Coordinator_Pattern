//
//  Loader.swift
//  Coordinator_Pattern
//
//  Created by russel on 18/9/24.
//

import SVProgressHUD

class Loader {
    static func show() {
        SVProgressHUD.show()
    }
    
    static func hide() {
        DispatchQueue.main.async {
            SVProgressHUD.dismiss()
        }
    }
}
