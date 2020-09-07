//
//  EFHMQuizDataManagerForImage.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 10/7/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMQuizDataManagerForImage: NSObject {
    
    private static var dataManager = EFHMQuizDataManagerForImage()
          
          class var shared:EFHMQuizDataManagerForImage{
              return dataManager
          }
         
        func getAllQuizLevel01()->[EFHMQuizModelForImage]
         {
          var QuizLevel01 = [EFHMQuizModelForImage]()
          
             let Level01_1 = EFHMQuizModelForImage.init(questionText: "This British overseas territory is a popular tax haven.", choiceA: "flag1", choiceB: "flag2", choiceC: "flag3", choiceD: "flag4", answer: 4)
             
             let Level01_2 = EFHMQuizModelForImage.init(questionText: "The highest point on this island, Mount Obama was renamed in 2009 in honor of the president.", choiceA: "flag6", choiceB: "flag2", choiceC: "flag5", choiceD: "flag4", answer: 3)
             
             let Level01_3 = EFHMQuizModelForImage.init(questionText: "This country produces its water from a desalination plant and the electricity on the island is a by-product of the desalination process.", choiceA: "flag10", choiceB: "flag9", choiceC: "flag3", choiceD: "flag1", answer: 2)
             
            let Level01_4 = EFHMQuizModelForImage.init(questionText: "This country has a magnificent underwater cave system.", choiceA: "flag1", choiceB: "flag5", choiceC: "flag9", choiceD: "flag8", answer: 1)
             
            let Level01_5 = EFHMQuizModelForImage.init(questionText: "This is the island of Cou-Cou and Flying Fish. The popular R&B singer Rihanna is from here.", choiceA: "flag6", choiceB: "flag7", choiceC: "flag8", choiceD: "flag10", answer: 4)
             
            let Level01_6 = EFHMQuizModelForImage.init(questionText: "Rum is the national drink of this country. The fastest man in the world Usain Bolt is from here.", choiceA: "flag3", choiceB: "flag2", choiceC: "flag5", choiceD: "flag4", answer: 1)
            
          let Level01_7 = EFHMQuizModelForImage.init(questionText: "This country produces its water from a desalination plant and the electricity on the island is a by-product of the desalination process.", choiceA: "flag1", choiceB: "flag8", choiceC: "flag7", choiceD: "flag10", answer: 2)
           
          let Level01_8 = EFHMQuizModelForImage.init(questionText: "This country has a magnificent underwater cave system.", choiceA: "flag2", choiceB: "flag4", choiceC: "flag8", choiceD: "flag10", answer: 1)
           
          let Level01_9 = EFHMQuizModelForImage.init(questionText: "This is the island of Cou-Cou and Flying Fish. The popular R&B singer Rihanna is from here.", choiceA: "flag1", choiceB: "flag5", choiceC: "flag3", choiceD: "flag7", answer: 4)
           
          let Level01_10 = EFHMQuizModelForImage.init(questionText: "Rum is the national drink of this country. The fastest man in the world Usain Bolt is from here.", choiceA: "flag10", choiceB: "flag9", choiceC: "flag8", choiceD: "flag6", answer: 1)
          
            QuizLevel01.append(contentsOf: [Level01_1,Level01_2,Level01_3,Level01_4,Level01_5,Level01_6,Level01_7,Level01_8,Level01_9,Level01_10])
                 return QuizLevel01
         }
}
