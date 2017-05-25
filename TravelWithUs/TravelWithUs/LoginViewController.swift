//
//  LoginViewController.swift
//  GenCar
//
//  Created by A Tran on 3/23/17.
//  Copyright © 2017 com.dotn. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBAction func comebackButton(_ sender: UIButton) {
         //   self.revealViewController().revealToggle(self)
    
   //     self.navigationController?.popViewController(animated: true)
        print("come back login")
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    @IBAction func LoginButtonClicked(_ sender: UIButton) {
        
    }
    
    @IBAction func RegisterButtonClicked(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Register01ViewController" ) as? Register01ViewController{
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    
    @IBAction func ForgetPasswordButtonClicked(_ sender: UIButton) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "ForgetViewController" ) as? ForgetViewController{
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        // Do any additional setup after loading the view.
        
        self.navigationController?.isNavigationBarHidden = true
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
