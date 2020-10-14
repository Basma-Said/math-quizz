//
//  ViewController.swift
//  math Quize
//
//  Created by Basma Said on 12/2/18.
//  Copyright © 2018 Basma Said. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate {
    
    let allQuestion = QuestionList()
    var selectedAnswer: Int = 0
    var questionNumber: Int = 0
    var score : Int = 0
   
    
    
    
    
    
    var audioPlayer : AVAudioPlayer!

    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    @IBOutlet weak var qustionBoard: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstButton.isHidden = true
        secondButton.isHidden = true
        thirdButton.isHidden = true
        fourthButton.isHidden = true
       
        
    }

    @IBAction func startButton(_ sender: UIButton) {
        startButton.isHidden = true
        firstButton.isHidden = false
        secondButton.isHidden = false
        thirdButton.isHidden = false
        fourthButton.isHidden = false
        
       updateScreen()
        
    }
  
    @IBAction func answersPressed(_ sender: UIButton) {
       
        if sender.tag == selectedAnswer {
           
            
            score = score + 20
            playCalppingSound()
        }
        else {
            playLosingSound()
        }

       updateScreen()
    }
    
    
    
    func updateScreen(){
        if questionNumber <= 4 {
            updateProgress()
            qustionBoard.text=allQuestion.list[questionNumber].questionText
            
            firstButton.setTitle(allQuestion.list[questionNumber].answerA, for: .normal)
            secondButton.setTitle(allQuestion.list[questionNumber].answerB, for: .normal)
            thirdButton.setTitle(allQuestion.list[questionNumber].answerC, for: .normal)
            fourthButton.setTitle(allQuestion.list[questionNumber].answerD, for: .normal)
            
            selectedAnswer = allQuestion.list[questionNumber].answerNumber
           
            questionNumber = questionNumber + 1
            
           
        }
        else{
            startButton.isHidden = false
            startButton.setTitle("restart again", for: .normal)
            firstButton.isHidden = true
            secondButton.isHidden = true
            thirdButton.isHidden = true
            fourthButton.isHidden = true
            questionNumber = 0
            qustionBoard.text = ""
            
        }
        
    }
    
    func updateProgress() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber+1) / 5"
        progressBar.frame.size.width = (view.frame.size.width / 5) * CGFloat(questionNumber+1)
    }
    
    func playCalppingSound() {   // clapping Sound Function
        
        let clappingSoundURL = Bundle.main.url(forResource: "clapping", withExtension: "mp3")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: clappingSoundURL!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
        
    }
    func playLosingSound(){     //Losing Sound Function
        
        let losingSoundURL = Bundle.main.url(forResource: "losing", withExtension: "mp3")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: losingSoundURL!)
        }
        catch{
            print(error)
        }
        audioPlayer.play()
    }
    
}

