//
//  SuguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 주진형 on 2022/05/02.
//

import UIKit

class SuguePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
