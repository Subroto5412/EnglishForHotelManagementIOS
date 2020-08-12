//
//  EFHMPageViewController.swift
//  EnglishForHotelManagement
//
//  Created by Subroto Mohonto on 13/8/20.
//  Copyright © 2020 Opu Sumon. All rights reserved.
//

import UIKit

protocol EFHMPageViewControllerDelegate: class {
    
    func didSelectedController(type: Int)
    
}

class EFHMPageViewController: UIPageViewController {

    weak var selectionDelegate: EFHMPageViewControllerDelegate?
    var subViewControllers = [UIViewController]()
    var selectedIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.dataSource = self
        self.showViewController(at: self.selectedIndex)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if let pageScrollView = view.subviews.first {
            pageScrollView.frame = view.bounds
        }
    }
    
    func setSubViewControllers(controllers:[UIViewController]) {
        subViewControllers.removeAll()
        subViewControllers.append(contentsOf: controllers)
    }
    
    func showViewController(at controllerIndex:Int) {
        self.setViewControllers([subViewControllers[controllerIndex]], direction: .forward, animated: false, completion: nil)
    }
    
    func updateSelectedControllerIndex(withSelectedIndex currentIndex:Int)  {
        
        self.selectedIndex = currentIndex
        self.selectionDelegate?.didSelectedController(type: self.selectedIndex)
        
    }
    
}

extension EFHMPageViewController : UIPageViewControllerDataSource {
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        
        var currentIndex = 0
        if let currentVC = self.viewControllers!.first {
            if let indexOfController = subViewControllers.index(of: currentVC) {
                currentIndex = indexOfController
            }
        }
        self.updateSelectedControllerIndex(withSelectedIndex: currentIndex)
        return currentIndex
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let currentIndex : Int = subViewControllers.lastIndex(of: viewController) ?? 0
        if currentIndex <= 0 {
            return nil
        }
        return subViewControllers[currentIndex-1]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let currentIndex : Int = subViewControllers.lastIndex(of: viewController) ?? 0
        if currentIndex >= subViewControllers.count - 1 {
            return nil
        }
        return subViewControllers[currentIndex+1]
        
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return subViewControllers.count
    }
    
    
}


extension EFHMPageViewController : UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        
        if completed {
            
            if let currentViewController = pageViewController.viewControllers?[0] {
                
                let currentIndex : Int = subViewControllers.lastIndex(of: currentViewController) ?? 0
                self.updateSelectedControllerIndex(withSelectedIndex: currentIndex)
               
            }
        }
        
    }
    
    
}


