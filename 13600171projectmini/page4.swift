//
//  page4.swift
//  13600171projectmini
//
//  Created by minmint.cs on 9/11/2561 BE.
//  Copyright © 2561 Chamavee. All rights reserved.
//
import UIKit
import Foundation
import AVFoundation

class page4: UIViewController,AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    var timer = Timer()
    var limitTime = 20
    let soundFilesName = ["sound1","sound2",]
    
    @IBOutlet weak var correctAnsLabelReport: UILabel!
    @IBOutlet weak var wrongAnsLabelReport: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!

    
    @IBAction func startPressed(_ sender: Any) {
        //ปุ่มplay
        timer = Timer.scheduledTimer(timeInterval: 1, target:
            self, selector:
            #selector(page4.processTimer), userInfo:
            nil, repeats:true)
        //สั่งเวลาให้เดิน
        

    }
    @IBOutlet weak var timeLimitToplay: UILabel!
    
    let allQuestion = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    var wrong : Int = 0
    var correct : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        questionLabel.text = allQuestion.list[0].questionText
        updateUI()
    }
    @IBAction func answerPressed(_ sender: Any) {
        if limitTime != 20{
    
        if (sender as AnyObject).tag == 1 {
            print("picked true")
            //ตัวแปรเก็บคำตอบ
            pickedAnswer = true
            playSound()
        }else if (sender as AnyObject).tag == 2{
            print("picked false")
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber = questionNumber+1
        updateUI()
            
        }
    }
    func checkAnswer() {
        let correcAnswer = allQuestion.list[questionNumber].answer
        
        if correcAnswer == pickedAnswer {
            print("you got it")
            score = score + 1
            correct = correct + 1
            ProgressHUD.showSuccess("ถูกต้อง")
            playSound()
        }else{
            print("Wrong")
            wrong = wrong + 1
            ProgressHUD.showError("ผิด")
            playSound2()
        }
    }
    func startOver(){
        questionNumber = 0
        score = 0
        limitTime = 20
        wrong = 0
        correct = 0
        pickedAnswer = false
    }
    
    func nextQuestion(){
        if questionNumber <= 9{
        questionLabel.text = allQuestion.list[questionNumber].questionText
        }else{
            print("end of question")
            timer.invalidate()
            let alert = UIAlertController(title: "Answer", message: "ไปรับรางวัลเลย คะแนนของคุณคือ \(score)", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {UIAlertAction in
                self.startOver()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
    func updateUI(){
        progressBar.frame.size.width = (view.frame.size.width / 10)
        * CGFloat(questionNumber)
        
        progressLabel.text = String(questionNumber+1) + "/10"
        scoreLabel.text = "score: " + String(score)
        
        correctAnsLabelReport.text = "correct Ans:" + String(correct) + " = " +
            String((Float(correct)/10.0)*100)
                    wrongAnsLabelReport.text = "correct Ans"
            String((Float(wrong)/10.0)*100)
                
        nextQuestion()
        
        }
    @objc func processTimer() {
        
        if limitTime > 0 {
            limitTime -= 1
            timeLimitToplay.text = String(limitTime)
        }else{
            timer.invalidate()
        }
        if limitTime <= 0{
            limitTime = 0
            timeLimitToplay.text = String(limitTime)
        }
        timeLimitToplay.text = String(limitTime)
    }
    func playSound(){
        
        let soundURL  = Bundle.main.url (forResource: "sound1", withExtension: "mp3")
        audioPlayer = try!  AVAudioPlayer(contentsOf: soundURL!)
        audioPlayer.play()
        
        }
    func playSound2(){
        
        let soundURL  = Bundle.main.url (forResource: "sound2", withExtension: "mp3")
        audioPlayer = try!  AVAudioPlayer(contentsOf: soundURL!)
        audioPlayer.play()
        
        }
    }

