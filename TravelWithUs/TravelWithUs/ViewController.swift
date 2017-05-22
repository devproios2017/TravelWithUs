//
//  ViewController.swift
//  TravelWithUs
//
//  Created by ATran.Dev on 5/19/17.
//  Copyright © 2017 ATran.Dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var flag = true
  
    @IBOutlet weak var ledding: NSLayoutConstraint!
  
    @IBOutlet weak var view2: UIView!
   
    @IBAction func menuTouchUpInside(_ sender: UIBarButtonItem) {
        if flag {
            ledding.constant = 0
        }else{
            ledding.constant = -UIScreen.main.bounds.height*0.8

        }
        flag = !flag
        UIView.animate(withDuration: 0.2, animations:{
            self.view.layoutIfNeeded()
        })
    }
    
    @IBAction func swipeGestureAction(_ sender: UISwipeGestureRecognizer) {
        
        if let swipeGesture = sender as? UISwipeGestureRecognizer {
            switch swipeGesture.direction {
            case UISwipeGestureRecognizerDirection.right:
                print("Swiped right")
            case UISwipeGestureRecognizerDirection.down:
                print("Swiped down")
            case UISwipeGestureRecognizerDirection.left:
                print("Swiped left")
            case UISwipeGestureRecognizerDirection.up:
                print("Swiped up")
            default:
                break
            }
        }
        
        ledding.constant = -UIScreen.main.bounds.height*0.8
        UIView.animate(withDuration: 0.2, animations:{
            self.view.layoutIfNeeded()
        })
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ledding.constant = -UIScreen.main.bounds.height*0.8

        
        view2.layer.shadowOpacity = 1
        view2.layer.shadowRadius = 1
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureAction(_:)))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        //        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureAction(_:)))
        //        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        //        self.view.addGestureRecognizer(swipeRight)
        //
        //        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureAction(_:)))
        //        swipeDown.direction = UISwipeGestureRecognizerDirection.down
        //        self.view.addGestureRecognizer(swipeDown)
        //
        //        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(self.swipeGestureAction(_:)))
        //        swipeUp.direction = UISwipeGestureRecognizerDirection.up
        //        self.view.addGestureRecognizer(swipeUp)
        
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

