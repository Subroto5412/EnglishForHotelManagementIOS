//
//  EFHMDataManager.swift
//  EnglishForConstruction
//
//  Created by Subroto Mohonto on 22/6/20.
//  Copyright © 2020 Subroto Mohonto. All rights reserved.
//

import UIKit

class EFHMVocabularyDataManager: NSObject {
    private static var dataManager = EFHMVocabularyDataManager()
    
    class var shared:EFHMVocabularyDataManager{
        return dataManager
    }
    
    func getAllGeetingsVocabulary()->[EFHMVocabularyModel]
    {
        var Vocabularies = [EFHMVocabularyModel]()
        let vocabulary1 = EFHMVocabularyModel.init(type: "1", english: "Good Morning", bangla: "সুপ্রভাত")
        let vocabulary2 = EFHMVocabularyModel.init(type: "1", english: "Good Afternoon", bangla: "শুভ অপরাহ্ন")
        
        Vocabularies.append(contentsOf: [vocabulary1,vocabulary2])
        return Vocabularies
    }
    
    func getAllReceptionVocabulary()->[EFHMVocabularyModel]
    {
        var Tools = [EFHMVocabularyModel]()
        let Tool1 = EFHMVocabularyModel.init(type: "1", english: "Good Morning", bangla: "সুপ্রভাত")
        let Tool2 = EFHMVocabularyModel.init(type: "1", english: "Good Night", bangla: "শুভ রাত্রি")

        Tools.append(contentsOf: [Tool1,Tool2])
        return Tools
    }
//
//    func getAllWorkVocabulary()->[EFHMVocabularyModel]
//       {
//           var workVocabulary = [EFHMVocabularyModel]()
//           let workVocabulary1 = EFHMVocabularyModel.init(type: "1", english: "Good Morning", bangla: "সুপ্রভাত")
//           let workVocabulary2 = EFHMVocabularyModel.init(type: "1", english: "Good Work", bangla: "শুভ অপরাহ্ন")
//
//           workVocabulary.append(contentsOf: [workVocabulary1,workVocabulary2])
//           return workVocabulary
//       }
//
//    func getAllProductVocabulary()->[EFHMVocabularyModel]
//       {
//           var productVocabulary = [EFHMVocabularyModel]()
//           let productVocabulary1 = EFHMVocabularyModel.init(type: "1", english: "Good Morning", bangla: "সুপ্রভাত")
//           let productVocabulary2 = EFHMVocabularyModel.init(type: "1", english: "Good Product", bangla: "শুভ অপরাহ্ন")
//
//           productVocabulary.append(contentsOf: [productVocabulary1,productVocabulary2])
//           return productVocabulary
//       }
//
//    func getAllFoodsVocabulary()->[EFHMVocabularyModel]
//       {
//           var foodsVocabulary = [EFHMVocabularyModel]()
//           let foodsVocabulary1 = EFHMVocabularyModel.init(type: "1", english: "Good Morning", bangla: "সুপ্রভাত")
//           let foodsVocabulary2 = EFHMVocabularyModel.init(type: "1", english: "Good Foods", bangla: "শুভ অপরাহ্ন")
//
//           foodsVocabulary.append(contentsOf: [foodsVocabulary1,foodsVocabulary2])
//           return foodsVocabulary
//       }
//
//    func getAllInterviewVocabulary()->[EFHMVocabularyModel]
//       {
//           var interviewVocabulary = [EFHMVocabularyModel]()
//           let interviewVocabulary1 = EFHMVocabularyModel.init(type: "1", english: "Good Morning", bangla: "সুপ্রভাত")
//           let interviewVocabulary2 = EFHMVocabularyModel.init(type: "1", english: "Good Interview", bangla: "শুভ অপরাহ্ন")
//
//           interviewVocabulary.append(contentsOf: [interviewVocabulary1,interviewVocabulary2])
//           return interviewVocabulary
//       }

}
