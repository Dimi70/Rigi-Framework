//
//  ViewController.swift
//  Development
//
//  Created by Dimitri van Oijen on 03/05/2022.
//

import UIKit
import Rigi

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        Rigi.shared.start()
    }
}

