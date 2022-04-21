//
//  ViewController.swift
//  lab1
//
//  Created by George Zibrovsky on 21.04.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userName: UITextField!

    @IBAction func saveBtn(_ sender: Any) {
        NovellaSettings.userName = userName.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let currentViewId = self .restorationIdentifier
        NovellaSettings.currentPage = currentViewId
    }
}

