//
//  CodePresnetViewController.swift
//  ScreenTransitionExample
//
//  Created by 주진형 on 2022/05/03.
//

import UIKit

protocol SendDataDelgate: AnyObject{
    func sendData(name: String)
}

class CodePresnetViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    weak var delagete: SendDataDelgate? //delagate 변수 앞에 weak를 붙여야 함. 그러지 않으면 메모리 누수 발행할 수 있음.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name{
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.delagete?.sendData(name: "Gunter")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
