//
//  ViewController.swift
//  TravelWithUs
//
//  Created by ATran.Dev on 5/19/17.
//  Copyright © 2017 ATran.Dev. All rights reserved.
//

import UIKit

class UserDefaultInfor: NSObject {
    let person = [
        "user" : "atran.dev",
        "pwd" : "matkhau_atran.dev",
        "email":"tranxuanai9x@gmail.com"
    ]
}

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
    
    
    @IBOutlet weak var userName: UILabel!
    override func viewDidLoad() {
        //load default
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
        
        let appDomain = Bundle.main.bundleIdentifier!
        UserDefaults.standard.removePersistentDomain(forName: appDomain)
        //get standard userdefault
//        let userDefaulr = UserDefaults.standard
//        
//        //read int for key lan_chay
//        var lan_chay = userDefaulr.integer(forKey: "lan_chay")
//        print("Chạy lần thứ \(lan_chay)")
//        //increase lan_chay by 1
//        lan_chay = lan_chay+1
//        userDefaulr.set(lan_chay, forKey: "lan_chay")
//        //write lan_chay to userdefautl
//        if let un = userName.text {
//            let username = userDefaulr.string(forKey: "username")
//            userDefaulr.set("\(un)", forKey: "username") // Nên mã hoá
//            print(username!)
//        }
//        
//        //add obj
//        // let object = UserDefaultInfor()
//        let object = UserDefaultInfor()
//        for (key,value) in object.person {
//            
//            //print("\(key)\(value)")
//            if key=="user"{
//                print("1--\(key)---\(value)")
//                let user = userDefaulr.string(forKey: "user")
//                if user == value {
//                    print("user Đã tồn tại")
//                    if key=="pwd"{
//                        print("2--\(key)---\(value)")
//                        let pwd = userDefaulr.string(forKey: "pwd")
//                        if pwd == value {
//                            print("pwd Đã tồn tại")
//                        }else{
//                            userDefaulr.set(value, forKey: "pwd")
//                        }
//                    }
//                    
//                }else{
//                    if key=="pwd"{
//                        print("2--\(key)---\(value)")
//                        let pwd = userDefaulr.string(forKey: "pwd")
//                        if pwd == value {
//                            print("Đã tồn tại")
//                        }else{
//                            userDefaulr.set(value, forKey: "pwd")
//                        }
//                        userDefaulr.set(value, forKey: "user")
//                    }
//                }
//                //synchronize -> commit
//                
//                userDefaulr.synchronize() //sau khi set xong cần đồng bộ xuống cơ sở dữ liệu, bộ nhớ của nó
          //  }
            //userDefaulr.set(, forKey: "obj1")
        }
   // }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

