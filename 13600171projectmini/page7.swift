//
//  page7.swift
//  13600171projectmini
//
//  Created by minmint.cs on 16/11/2561 BE.
//  Copyright © 2561 Chamavee. All rights reserved.
//
import UIKit
import Foundation

class page7: UIViewController{
    
    var randomLuckyIndext3 : Int = 0
    
    let luckyArray3 = ["k1","k2","k3","k4","k5","k6","k7","k8","k9","k10"]
    @IBOutlet weak var showImLabel3: UIImageView!
    
    @IBAction func randomButton3(_ sender: Any) {
        
        print("rollButtonPressed called")
        randomLuckyIndext3 = Int(arc4random_uniform(10))
        
        print(randomLuckyIndext3)
        
        showImLabel3.image = UIImage (named: luckyArray3[randomLuckyIndext3])
    }
    func changeLucky3() {
        randomLuckyIndext3 = Int(arc4random_uniform(10))
        
        print(randomLuckyIndext3)
        
        showImLabel3.image = UIImage (named: luckyArray3[randomLuckyIndext3])
    }
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeLucky3()
        
        
    }
}
