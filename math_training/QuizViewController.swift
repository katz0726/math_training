//
//  QuizViewController.swift
//  math_training
//
//  Created by shoya on 2024/03/22.
//

import UIKit

class QuizViewController: UIViewController {
    // 問題数
    let totalQuestions = 10
    // 正解数
    var correctCount = 0
    // 現在の問題
    var questionIndex = 0
    // 正解の番号
    var answerIndex = 0

    @IBOutlet var leftNumberLabel: UILabel!
    @IBOutlet var centerNumberLabel: UILabel!
    @IBOutlet var rightNumberLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        setQuestions()
    }

    @IBAction func tapped(sender: UIButton) {
        if sender.tag - 1 == answerIndex {
            correct += 1
        }

        questionIndex += 1
        if totalQuestions <= questionIndex {
            performSegue(withIdentifier: "QuizToResult", sender: nil)
        } else {
            setQuestions() 
        }
    }

    func setQuestions() {
        let leftNum = Int(arc4random_uniform(10))
        var centerNum = Int(arc4random_uniform(10))

        answerIndex = Int(arc4random_uniform(4))

        //
        switch answerIndex {
        case 0:
            rightNumberLabel.text = "\(leftNum + centerNum)"
        case 1:
            rightNumberLabel.text = "\(leftNum - centerNum)"
        case 2:
            rightNumberLabel.text = "\(leftNum * centerNum)"
        default:
            if centerNum == 0{
                centerNum = 1
            }
            rightNumberLabel.text = "\(leftNum / centerNum)"
        }

        leftNumberLabel.text = "\(leftNum)"
        centerNumberLabel.text = "\(centerNum)"
    }
}
