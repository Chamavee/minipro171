//
//  page6.swift
//  13600171projectmini
//
//  Created by minmint.cs on 16/11/2561 BE.
//  Copyright © 2561 Chamavee. All rights reserved.
//
import UIKit
import Foundation

    class page6: UIViewController{
        
    var randomLuckyIndext2 : Int = 0
        
    let luckyArray2 = ["Page1","Page2","Page3","Page4","Page5","Page6","Page7","Page8","Page9","Page10"]
        
    @IBOutlet weak var showLabel2: UIImageView!
    @IBAction func ramdomBt1(_ sender: Any) {
        print("rollButtonPressed called")
        randomLuckyIndext2 = Int(arc4random_uniform(10))
        
        print(randomLuckyIndext2)
        
        showLabel2.image = UIImage (named: luckyArray2[randomLuckyIndext2])
        
    }
        func changeLucky2() {
            randomLuckyIndext2 = Int(arc4random_uniform(10))
            
            print(randomLuckyIndext2)
            
            showLabel2.image = UIImage (named: luckyArray2[randomLuckyIndext2])
    }
        override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
            changeLucky2()
    }
}
