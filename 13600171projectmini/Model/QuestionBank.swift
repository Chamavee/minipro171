//
//  QuestionBank.swift
//  13600171projectmini
//
//  Created by minmint.cs on 9/11/2561 BE.
//  Copyright © 2561 Chamavee. All rights reserved.
//

import Foundation
class QuestionBank {
    
    var list = [Question]()
    init() {
        let item = Question (text: "ธาตุไฮโดรเจนเบาที่สุด", correcAnswer: true)
        
        list.append(item)
        
        list.append(Question(text: "ทวีปเอเชียเล็กที่สุดในโลก", correcAnswer: false))
        
        list.append(Question(text: "นกอินทรีย์บินเร็วที่สุด", correcAnswer: true))
        
        list.append(Question(text: "อ่าวเม็กซิโกเล็กที่สุดในโลก", correcAnswer: false))
        
        list.append(Question(text: "อังกฤษมีเมืองขึ้นมากที่สุด", correcAnswer: true))
        
        list.append(Question(text: "กำแพงเมืองจีนยาวที่สุด", correcAnswer: true))
        
        list.append(Question(text: "ประเทศอินเดียครองความเป็นเจ้าแห่งภาษา", correcAnswer: true))
        
        list.append(Question(text: "ดาวเคราะห์ที่อยู่ใกล้โลกมากที่สุด - ดาวศุกร์ ", correcAnswer: true))
        
        list.append(Question(text: "มนุษย์อวกาศคนแรกของโลกไม่ใช่ ยูริ กาการิน", correcAnswer: false))
        
        list.append(Question(text: "ต้นไม้ที่ใหญ่ที่สุด - ต้นซานตา", correcAnswer: true))
        
    }
    
}
