//
//  EFHMLevel02ViewController.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 8/7/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMLevel02ViewController: UIViewController {

    @IBOutlet weak var topBarForQuiz2: EFHMTopBarForQuiz2!
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    var allQuestions = EFHMQuizDataManager.shared.getAllQuizLevel01()
    var questionNumber: Int = 0
    var score: Int = 0
    var total_Score: Double = 0.0
    var progress: Int = 0
    var selectedAnswer: Int = 0
    
    class func initWithStoryboard() -> EFHMLevel02ViewController
    {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: EFHMLevel02ViewController.className) as! EFHMLevel02ViewController

        return controller
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.updateQuestion()
         self.initializeTopBar()
    }
    
    func initializeTopBar() {
     self.topBarForQuiz2.delegate = self
    }

    @IBAction func pressAnswerA(_ sender: UIButton) {

        score += 1
        progress += 1
        if progress == 1 {
            self.topBarForQuiz2.progressView1.backgroundColor = UIColor.blue
        }else if progress == 2 {
            self.topBarForQuiz2.progressView2.backgroundColor = UIColor.blue
        }else if progress == 3 {
            self.topBarForQuiz2.progressView3.backgroundColor = UIColor.blue
        }else if progress == 4 {
            self.topBarForQuiz2.progressView4.backgroundColor = UIColor.blue
        }else if progress == 5 {
            self.topBarForQuiz2.progressView5.backgroundColor = UIColor.blue
        }else if progress == 6 {
            self.topBarForQuiz2.progressView6.backgroundColor = UIColor.blue
        }else if progress == 7 {
            self.topBarForQuiz2.progressView7.backgroundColor = UIColor.blue
        }else if progress == 8 {
            self.topBarForQuiz2.progressView8.backgroundColor = UIColor.blue
        }else if progress == 9 {
            self.topBarForQuiz2.progressView9.backgroundColor = UIColor.blue
        }else if progress == 10 {
            self.topBarForQuiz2.progressView10.backgroundColor = UIColor.blue
        }
        questionNumber += 1
        updateQuestion()
    }
    
    @IBAction func pressAnswerB(_ sender: Any) {

        score += 1
        progress += 1
        if progress == 1 {
            self.topBarForQuiz2.progressView1.backgroundColor = UIColor.blue
        }else if progress == 2 {
            self.topBarForQuiz2.progressView2.backgroundColor = UIColor.blue
        }else if progress == 3 {
            self.topBarForQuiz2.progressView3.backgroundColor = UIColor.blue
        }else if progress == 4 {
            self.topBarForQuiz2.progressView4.backgroundColor = UIColor.blue
        }else if progress == 5 {
            self.topBarForQuiz2.progressView5.backgroundColor = UIColor.blue
        }else if progress == 6 {
            self.topBarForQuiz2.progressView6.backgroundColor = UIColor.blue
        }else if progress == 7 {
            self.topBarForQuiz2.progressView7.backgroundColor = UIColor.blue
        }else if progress == 8 {
            self.topBarForQuiz2.progressView8.backgroundColor = UIColor.blue
        }else if progress == 9 {
            self.topBarForQuiz2.progressView9.backgroundColor = UIColor.blue
        }else if progress == 10 {
            self.topBarForQuiz2.progressView10.backgroundColor = UIColor.blue
        }
        questionNumber += 1
        updateQuestion()
    }
    
    @IBAction func pressAnswerC(_ sender: Any) {

        score += 1
        progress += 1
        if progress == 1 {
            self.topBarForQuiz2.progressView1.backgroundColor = UIColor.blue
        }else if progress == 2 {
            self.topBarForQuiz2.progressView2.backgroundColor = UIColor.blue
        }else if progress == 3 {
            self.topBarForQuiz2.progressView3.backgroundColor = UIColor.blue
        }else if progress == 4 {
            self.topBarForQuiz2.progressView4.backgroundColor = UIColor.blue
        }else if progress == 5 {
            self.topBarForQuiz2.progressView5.backgroundColor = UIColor.blue
        }else if progress == 6 {
            self.topBarForQuiz2.progressView6.backgroundColor = UIColor.blue
        }else if progress == 7 {
            self.topBarForQuiz2.progressView7.backgroundColor = UIColor.blue
        }else if progress == 8 {
            self.topBarForQuiz2.progressView8.backgroundColor = UIColor.blue
        }else if progress == 9 {
            self.topBarForQuiz2.progressView9.backgroundColor = UIColor.blue
        }else if progress == 10 {
            self.topBarForQuiz2.progressView10.backgroundColor = UIColor.blue
        }
        questionNumber += 1
        updateQuestion()
    }
    
    @IBAction func pressAnswerD(_ sender: Any) {

        score += 1
        progress += 1
        if progress == 1 {
            self.topBarForQuiz2.progressView1.backgroundColor = UIColor.blue
        }else if progress == 2 {
            self.topBarForQuiz2.progressView2.backgroundColor = UIColor.blue
        }else if progress == 3 {
            self.topBarForQuiz2.progressView3.backgroundColor = UIColor.blue
        }else if progress == 4 {
            self.topBarForQuiz2.progressView4.backgroundColor = UIColor.blue
        }else if progress == 5 {
            self.topBarForQuiz2.progressView5.backgroundColor = UIColor.blue
        }else if progress == 6 {
            self.topBarForQuiz2.progressView6.backgroundColor = UIColor.blue
        }else if progress == 7 {
            self.topBarForQuiz2.progressView7.backgroundColor = UIColor.blue
        }else if progress == 8 {
            self.topBarForQuiz2.progressView8.backgroundColor = UIColor.blue
        }else if progress == 9 {
            self.topBarForQuiz2.progressView9.backgroundColor = UIColor.blue
        }else if progress == 10 {
            self.topBarForQuiz2.progressView10.backgroundColor = UIColor.blue
        }
        questionNumber += 1
        updateQuestion()
    }
        
       func updateQuestion(){
            total_Score = Double(Float(score))/10
            topBarForQuiz2.resultLbl.text = "\(score) out of \(allQuestions.count)"
            if questionNumber <= allQuestions.count - 1{
                topBarForQuiz2.questionImage.image = UIImage(named:(allQuestions[questionNumber].questionImg))
                topBarForQuiz2.questionLbl.text = allQuestions[questionNumber].question
                optionA.setTitle(allQuestions[questionNumber].optionA, for: UIControl.State.normal)
                optionB.setTitle(allQuestions[questionNumber].optionB, for: UIControl.State.normal)
                optionC.setTitle(allQuestions[questionNumber].optionC, for: UIControl.State.normal)
                optionD.setTitle(allQuestions[questionNumber].optionD, for: UIControl.State.normal)
                selectedAnswer = allQuestions[questionNumber].correctAnswer

            }else {
                let alert = UIAlertController(title: "Awesome", message: "End of Quiz. Do you want to start over?", preferredStyle: .alert)
                let restartAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
                alert.addAction(restartAction)
                present(alert, animated: true, completion: nil)
                
                optionA.isEnabled = false
                optionB.isEnabled = false
                optionC.isEnabled = false
                optionD.isEnabled = false
            }
        }
}
extension EFHMLevel02ViewController : EFHMTopBarDelegate {

func didPressedOnButtonType(type:EFHMButtonType) {
    
    if type == .back {
        let controller = EFHMQuizViewController.initWithStoryboard()
        self.present(controller, animated: true, completion: nil);
    }
    
 }
}
