//
//  ResultViewController.swift
//  math_training
//
//  Created by shoya on 2024/03/22.
//

import UIKit

class ResultViewController: UIViewController {
    // 正解率
    var result = 0.0


    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var messageLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = "\(round(result))%"

        if result < 50 {
            messageLabel.text = "Please try again..."
        } else if result < 80 {
            messageLabel.text = "Nice!"
        } else {
            messageLabel.text = "You are great!!!"
        }
    }
}
