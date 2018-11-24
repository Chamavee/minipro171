//
//  page5.swift
//  13600171projectmini
//
//  Created by minmint.cs on 16/11/2561 BE.
//  Copyright © 2561 Chamavee. All rights reserved.
//


import UIKit
import Foundation

class Page5: UIViewController{
    
    var randomLuckyIndext1 : Int = 0
    
    let luckyArray1 = ["j1","j2","j3","j4","j5","j6","j7","j8","j9"]
    
    @IBOutlet weak var showImgLabel: UIImageView!
    @IBAction func randomBt(_ sender: Any) {
        print("rollButtonPressed called")
        randomLuckyIndext1 = Int(arc4random_uniform(9))
        
        print(randomLuckyIndext1)
        
        showImgLabel.image = UIImage (named: luckyArray1[randomLuckyIndext1])
        
    }
    func changeLucky1() {
        randomLuckyIndext1 = Int(arc4random_uniform(9))
        
        print(randomLuckyIndext1)
        
        showImgLabel.image = UIImage (named: luckyArray1[randomLuckyIndext1])
        
    }
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeLucky1()
    }
    
}
