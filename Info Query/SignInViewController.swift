//
//  ViewController.swift
//  Info Query
//
//  Created by abdallah shawky  on 2/13/20.
//  Copyright © 2020 abdallah shawky . All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    navigationController?.navigationBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
         navigationController?.navigationBar.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

