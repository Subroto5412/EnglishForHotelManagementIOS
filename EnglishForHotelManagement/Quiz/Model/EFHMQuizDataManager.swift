//
//  EFHMQuizDataManager.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 9/7/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMQuizDataManager: NSObject {
    
     private static var dataManager = EFHMQuizDataManager()
        
        class var shared:EFHMQuizDataManager{
            return dataManager
        }
       
      func getAllQuizLevel01()->[EFHMQuizModel]
       {
        var QuizLevel01 = [EFHMQuizModel]()
        
           let Level01_1 = EFHMQuizModel.init(image: "flag1", questionText: "This British overseas territory is a popular tax haven.", choiceA: "A. Haiti", choiceB: "B. Suriname", choiceC: "C. Puerto Rico", choiceD: "D. Anguilla", answer: 4)
           
           let Level01_2 = EFHMQuizModel.init(image: "flag2", questionText: "The highest point on this island, Mount Obama was renamed in 2009 in honor of the president.", choiceA: "A. Dominica", choiceB: "B. Bahamas", choiceC: "C. Antigua and Barbuda", choiceD: "British Virgin Islands", answer: 3)
           
           let Level01_3 = EFHMQuizModel.init(image: "flag3", questionText: "This country produces its water from a desalination plant and the electricity on the island is a by-product of the desalination process.", choiceA: "A. Cuba", choiceB: "B. Aruba", choiceC: "C. Gaudeloupe", choiceD: "D. Cayman Islands", answer: 2)
           
          let Level01_4 = EFHMQuizModel.init(image: "flag4", questionText: "This country has a magnificent underwater cave system.", choiceA: "A. The Bahamas", choiceB: "B. Venezuela", choiceC: "C. Matinique", choiceD: "D. Dominican Republic", answer: 1)
           
          let Level01_5 = EFHMQuizModel.init(image: "flag5" , questionText: "This is the island of Cou-Cou and Flying Fish. The popular R&B singer Rihanna is from here.", choiceA: "A. Trinidad and Tobago" , choiceB: "B. Saint Kitts and Nevis" , choiceC: "C. Grenada" , choiceD: "D. Barbados", answer: 4)
           
          let Level01_6 = EFHMQuizModel.init(image: "flag6" , questionText: "Rum is the national drink of this country. The fastest man in the world Usain Bolt is from here.", choiceA: "A. Jamaica" , choiceB: "B. Saint Vincent and the Grenadines" , choiceC: "C. St. Lucia" , choiceD: "D. Guyana", answer: 1)
        let Level01_7 = EFHMQuizModel.init(image: "flag7", questionText: "This country produces its water from a desalination plant and the electricity on the island is a by-product of the desalination process.", choiceA: "A. Cuba", choiceB: "B. Aruba", choiceC: "C. Gaudeloupe", choiceD: "D. Cayman Islands", answer: 2)
         
        let Level01_8 = EFHMQuizModel.init(image: "flag8", questionText: "This country has a magnificent underwater cave system.", choiceA: "A. The Bahamas", choiceB: "B. Venezuela", choiceC: "C. Matinique", choiceD: "D. Dominican Republic", answer: 1)
         
        let Level01_9 = EFHMQuizModel.init(image: "flag9" , questionText: "This is the island of Cou-Cou and Flying Fish. The popular R&B singer Rihanna is from here.", choiceA: "A. Trinidad and Tobago" , choiceB: "B. Saint Kitts and Nevis" , choiceC: "C. Grenada" , choiceD: "D. Barbados", answer: 4)
         
        let Level01_10 = EFHMQuizModel.init(image: "flag10" , questionText: "Rum is the national drink of this country. The fastest man in the world Usain Bolt is from here.", choiceA: "A. Jamaica" , choiceB: "B. Saint Vincent and the Grenadines" , choiceC: "C. St. Lucia" , choiceD: "D. Guyana", answer: 1)
        
          QuizLevel01.append(contentsOf: [Level01_1,Level01_2,Level01_3,Level01_4,Level01_5,Level01_6,Level01_7,Level01_8,Level01_9,Level01_10])
               return QuizLevel01
       }
}
