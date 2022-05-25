//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by 주진형 on 2022/05/02.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func tapCodePresent(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") as? CodePresnetViewController else {return}
        viewController.name = "Gunter"
        self.present(viewController, animated: true, completion: nil)
    }
    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else {return}
        viewController.name = "Gunter"
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    

}

