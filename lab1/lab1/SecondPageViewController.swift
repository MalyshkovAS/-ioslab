//
//  SecondPageViewController.swift
//  lab1
//
//  Created by George Zibrovsky on 21.04.2022.
//

import UIKit

class SecondPageViewController: UIViewController {
    @IBOutlet weak var helloUserLabel: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let currentViewId = self .restorationIdentifier
        NovellaSettings.currentPage = currentViewId
        
        let username = NovellaSettings.userName ?? ""
        helloUserLabel.text = "Отлично " + username + "! Чем займемся?"
        // Do any additional setup after loading the view.
    }
}
