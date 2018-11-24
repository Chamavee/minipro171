//
//  Question.swift
//  13600171projectmini
//
//  Created by minmint.cs on 9/11/2561 BE.
//  Copyright © 2561 Chamavee. All rights reserved.
//

import Foundation
class Question{
    let answer : Bool
    let questionText : String
    
    init(text : String, correcAnswer : Bool) {
        questionText = text
        answer = correcAnswer
    }
}
