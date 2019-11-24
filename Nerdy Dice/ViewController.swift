//
//  ViewController.swift
//  Nerdy Dice
//
//  Created by Jiri Hubacek on 11/23/19.
//  Copyright © 2019 Jiri Hubacek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let diceOptions = [#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "3"),#imageLiteral(resourceName: "4"),#imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "6")]
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let toImage = self.diceOptions.randomElement()
        UIView.transition(with: self.diceImageView,
                          duration: 0.3,
                          options: .transitionCrossDissolve,
                          animations: {
                            self.diceImageView.image = toImage
        },
                          completion: nil)
    }
    
    @IBOutlet weak var diceImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("started")
    }
}

