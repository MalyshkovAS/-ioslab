//
//  CustomNavigationController.swift
//  lab1
//
//  Created by George Zibrovsky on 22.04.2022.
//

import Foundation
import UIKit
class CustomNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let currentViewId = self .restorationIdentifier
        NovellaSettings.currentPage = currentViewId
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let currentView = self .visibleViewController
        let currentViewId = currentView?.restorationIdentifier
        NovellaSettings.currentPage = currentViewId
    }

}
