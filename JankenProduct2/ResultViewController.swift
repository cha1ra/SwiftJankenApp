//
//  ResultViewController.swift
//  JankenProduct2
//
//  Created by 坂尻愛明 on 2019/01/28.
//  Copyright © 2019 cha1ra.com. All rights reserved.
//

import UIKit

class ResultViewController : UIViewController {
    
    var userHand: String!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var comImageView: UIImageView!
    
    override func viewDidLoad() {
        self.title = "結果だよ"
        // self.resultLabel.text = "アイコ"
        // self.comImageView.image = UIImage(named: "com-choki")
        let comHand = choiceComHand()
        comImageView.image = UIImage(named: "com-\(comHand)")
        let result = judgeResult(userHand: userHand, comHand: comHand)
        resultLabel.text = result
    }
    
    func choiceComHand() -> String {
        let choices = ["gu", "choki", "pa"]
        let randomIndex = Int(arc4random_uniform(UInt32(choices.count)))
        return choices[randomIndex]
    }
    
    func judgeResult(userHand: String, comHand: String) -> String {
        
        if userHand == "gu" {
            if comHand == "gu" {
                return "あいこ"
            } else if comHand == "choki" {
                return "勝ち"
            } else if comHand == "pa" {
                return "負け"
            }
        } else if userHand == "choki" {
            if comHand == "gu" {
                return "負け"
            } else if comHand == "choki" {
                return "あいこ"
            } else if comHand == "pa" {
                return "勝ち"
            }
        } else if userHand == "pa" {
            if comHand == "gu" {
                return "勝ち"
            } else if comHand == "choki" {
                return "負け"
            } else if comHand == "pa" {
                return "あいこ"
            }
        }
        
        return ""
    }
    
    @IBAction func retryButton(_ sender: Any) {
        self.performSegue(withIdentifier: "retry", sender: "retry")
    }
}
