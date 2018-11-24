//
//  page3.swift
//  13600171projectmini
//
//  Created by minmint.cs on 9/11/2561 BE.
//  Copyright © 2561 Chamavee. All rights reserved.
//
import UIKit
import Foundation

class Page3: UIViewController{
    
    var randomLuckyIndext : Int = 0
    
    let luckyArray = ["lucky1", "lucky2", "lucky3", "lucky4", "lucky5", "lucky6", "lucky7", "lucky8", "lucky9", "lucky10"]
    
    @IBOutlet weak var showLabel: UIImageView!
    @IBAction func randomButton(_ sender: UIButton) {
        print("rollButtonPressed called")
        randomLuckyIndext = Int(arc4random_uniform(10))
        
        print(randomLuckyIndext)
        
        showLabel.image = UIImage (named: luckyArray[randomLuckyIndext])
        
    }
    func changeLucky() {
         randomLuckyIndext = Int(arc4random_uniform(10))
        
        print(randomLuckyIndext)
        
         showLabel.image = UIImage (named: luckyArray[randomLuckyIndext])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        changeLucky()
    }
    
}
