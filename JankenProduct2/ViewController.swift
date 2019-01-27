//
//  ViewController.swift
//  JankenProduct2
//
//  Created by 坂尻愛明 on 2019/01/28.
//  Copyright © 2019 cha1ra.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func onTapGu(_ sender: Any) {
        print("gu")
        self.performSegue(withIdentifier: "result", sender: "gu")
    }
    @IBAction func onTapChoki(_ sender: Any) {
        print("choki")
        self.performSegue(withIdentifier: "result", sender: "choki")
    }
    @IBAction func onTapPa(_ sender: Any) {
        print("pa")
        self.performSegue(withIdentifier: "result", sender: "pa")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "result" {
            if let vc = segue.destination as? ResultViewController {
                if let hand = sender as? String {
                    vc.userHand = hand
                }
            }
        }
        
    }
    

}

