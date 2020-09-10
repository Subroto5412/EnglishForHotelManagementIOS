//
//  EFHMLevel03ViewController.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 8/9/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMLevel03ViewController: UIViewController {

    @IBOutlet weak var topBarForQuiz: EFHMTopBarForQuiz!
    @IBOutlet weak var optionA: UIImageView!
    @IBOutlet weak var optionB: UIImageView!
    @IBOutlet weak var optionC: UIImageView!
    @IBOutlet weak var optionD: UIImageView!
    
    @IBOutlet weak var optionAbtn: UIButton!
    @IBOutlet weak var optionBbtn: UIButton!
    @IBOutlet weak var optionCbtn: UIButton!
    @IBOutlet weak var optionDbtn: UIButton!
    
    var allQuestions = EFHMQuizDataManagerForImage.shared.getAllQuizLevel01()
    var questionNumber: Int = 0
    var score: Int = 0
    var total_Score: Double = 0.0
    var progress: Int = 0
    var selectedAnswer: Int = 0
    
    class func initWithStoryboard() -> EFHMLevel03ViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: EFHMLevel03ViewController.className) as! EFHMLevel03ViewController
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateQuestion()
        self.initializeTopBar()
        topBarForQuiz.lablelName.text = "Level03"
    }
    
 func initializeTopBar() {
     self.topBarForQuiz.delegate = self as? EFHMTopBarDelegate
    }

    @IBAction func pressAnswerA(_ sender: Any) {
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
    
    @IBAction func pressAnswerB(_ sender: Any) {
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
    
    @IBAction func pressAnswerC(_ sender: Any) {
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
    
    @IBAction func pressAnswerD(_ sender: Any) {
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
    
    func updateQuestion(){
        total_Score = Double(Float(score))/10
        topBarForQuiz.resultLbl.text = "\(score) out of \(allQuestions.count)"
        if questionNumber <= allQuestions.count - 1{
            topBarForQuiz.questionLbl.text = allQuestions[questionNumber].question
            optionA.image = UIImage(named:(allQuestions[questionNumber].optionA))
            optionB.image = UIImage(named:(allQuestions[questionNumber].optionB))
            optionC.image = UIImage(named:(allQuestions[questionNumber].optionC))
            optionD.image = UIImage(named:(allQuestions[questionNumber].optionD))
            selectedAnswer = allQuestions[questionNumber].correctAnswer
        }else {
            let alert = UIAlertController(title: "Awesome", message: "End of Quiz. Do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Okay", style: .default, handler: nil)
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
                
            optionAbtn.isEnabled = false
            optionBbtn.isEnabled = false
            optionCbtn.isEnabled = false
            optionDbtn.isEnabled = false
        }
    }
}
extension EFHMLevel03ViewController : EFHMTopBarDelegate {
func didPressedOnButtonType(type:EFHMButtonType) {
    if type == .back {
        let controller = EFHMQuizViewController.initWithStoryboard()
        self.present(controller, animated: true, completion: nil);
    }
 }
}
