//
//  EFHMLabel01ViewController.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 7/7/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMLevel01ViewController: UIViewController {
    
    @IBOutlet weak var topBarForQuiz: EFHMTopBarForQuiz!
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
    
    class func initWithStoryboard() -> EFHMLevel01ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: EFHMLevel01ViewController.className) as! EFHMLevel01ViewController
          return controller
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initializeTopBar()
        updateQuestion()
    }
    
    @IBAction func answerPressedA(_ sender: UIButton) {
           
        score += 1
        progress += 1
        if progress == 1 {
            self.topBarForQuiz.ProgressView1.backgroundColor = UIColor.blue
        }else if progress == 2 {
            self.topBarForQuiz.progressView2.backgroundColor = UIColor.blue
        }else if progress == 3 {
            self.topBarForQuiz.progressView3.backgroundColor = UIColor.blue
        }else if progress == 4 {
            self.topBarForQuiz.progressView4.backgroundColor = UIColor.blue
        }else if progress == 5 {
            self.topBarForQuiz.progressView5.backgroundColor = UIColor.blue
        }else if progress == 6 {
            self.topBarForQuiz.progressView6.backgroundColor = UIColor.blue
        }else if progress == 7 {
            self.topBarForQuiz.progressView7.backgroundColor = UIColor.blue
        }else if progress == 8 {
            self.topBarForQuiz.progressView8.backgroundColor = UIColor.blue
        }else if progress == 9 {
            self.topBarForQuiz.progressView9.backgroundColor = UIColor.blue
        }else if progress == 10 {
            self.topBarForQuiz.progressView10.backgroundColor = UIColor.blue
        }
        
        questionNumber += 1
        updateQuestion()
    }
    
    @IBAction func anwserPressedB(_ sender: Any) {
      
    score += 1
    progress += 1
    if progress == 1 {
        self.topBarForQuiz.ProgressView1.backgroundColor = UIColor.blue
    }else if progress == 2 {
        self.topBarForQuiz.progressView2.backgroundColor = UIColor.blue
    }else if progress == 3 {
        self.topBarForQuiz.progressView3.backgroundColor = UIColor.blue
    }else if progress == 4 {
        self.topBarForQuiz.progressView4.backgroundColor = UIColor.blue
    }else if progress == 5 {
        self.topBarForQuiz.progressView5.backgroundColor = UIColor.blue
    }else if progress == 6 {
        self.topBarForQuiz.progressView6.backgroundColor = UIColor.blue
    }else if progress == 7 {
        self.topBarForQuiz.progressView7.backgroundColor = UIColor.blue
    }else if progress == 8 {
        self.topBarForQuiz.progressView8.backgroundColor = UIColor.blue
    }else if progress == 9 {
        self.topBarForQuiz.progressView9.backgroundColor = UIColor.blue
    }else if progress == 10 {
        self.topBarForQuiz.progressView10.backgroundColor = UIColor.blue
    }
        questionNumber += 1
        updateQuestion()
    }
    
    @IBAction func answerPressedC(_ sender: Any) {
        score += 1
        progress += 1
        if progress == 1 {
            self.topBarForQuiz.ProgressView1.backgroundColor = UIColor.blue
        }else if progress == 2 {
            self.topBarForQuiz.progressView2.backgroundColor = UIColor.blue
        }else if progress == 3 {
            self.topBarForQuiz.progressView3.backgroundColor = UIColor.blue
        }else if progress == 4 {
            self.topBarForQuiz.progressView4.backgroundColor = UIColor.blue
        }else if progress == 5 {
            self.topBarForQuiz.progressView5.backgroundColor = UIColor.blue
        }else if progress == 6 {
            self.topBarForQuiz.progressView6.backgroundColor = UIColor.blue
        }else if progress == 7 {
            self.topBarForQuiz.progressView7.backgroundColor = UIColor.blue
        }else if progress == 8 {
            self.topBarForQuiz.progressView8.backgroundColor = UIColor.blue
        }else if progress == 9 {
            self.topBarForQuiz.progressView9.backgroundColor = UIColor.blue
        }else if progress == 10 {
            self.topBarForQuiz.progressView10.backgroundColor = UIColor.blue
        }
        questionNumber += 1
        updateQuestion()
    }
    
    @IBAction func anserPressedD(_ sender: Any) {
        score += 1
        progress += 1
        if progress == 1 {
            self.topBarForQuiz.ProgressView1.backgroundColor = UIColor.blue
        }else if progress == 2 {
            self.topBarForQuiz.progressView2.backgroundColor = UIColor.blue
        }else if progress == 3 {
            self.topBarForQuiz.progressView3.backgroundColor = UIColor.blue
        }else if progress == 4 {
            self.topBarForQuiz.progressView4.backgroundColor = UIColor.blue
        }else if progress == 5 {
            self.topBarForQuiz.progressView5.backgroundColor = UIColor.blue
        }else if progress == 6 {
            self.topBarForQuiz.progressView6.backgroundColor = UIColor.blue
        }else if progress == 7 {
            self.topBarForQuiz.progressView7.backgroundColor = UIColor.blue
        }else if progress == 8 {
            self.topBarForQuiz.progressView8.backgroundColor = UIColor.blue
        }else if progress == 9 {
            self.topBarForQuiz.progressView9.backgroundColor = UIColor.blue
        }else if progress == 10 {
            self.topBarForQuiz.progressView10.backgroundColor = UIColor.blue
        }
        questionNumber += 1
        updateQuestion()
    }
    
    
    func initializeTopBar() {
     self.topBarForQuiz.delegate = self as? EFHMTopBarDelegate
    }
    
    func updateQuestion(){
        total_Score = Double(Float(score))/10
        topBarForQuiz.resultLbl.text = "\(score) out of \(allQuestions.count)"
        if questionNumber <= allQuestions.count - 1{
            topBarForQuiz.questionLbl.text = allQuestions[questionNumber].question
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

extension EFHMLevel01ViewController : EFHMTopBarDelegate {

func didPressedOnButtonType(type:EFHMButtonType) {
    
    if type == .back {
        let controller = EFHMQuizViewController.initWithStoryboard()
        self.present(controller, animated: true, completion: nil);
    }
 }
}
