//
//  Register01ViewController.swift
//  GenCar
//
//  Created by A Tran on 3/24/17.
//  Copyright © 2017 com.dotn. All rights reserved.
//

import UIKit

class Register01ViewController: UIViewController {

    
    @IBAction func comeBackButtonClicked(_ sender: UIButton) {
        print("come back login 1")
        self.navigationController?.popViewController(animated: true);
        
    }
    
    @IBAction func ContinueButtonClicked(_ sender: UIButton) {
        if  let vc = storyboard?.instantiateViewController(withIdentifier: "Register02ViewController") as? Register02ViewController{
            self.navigationController?.pushViewController(vc, animated: true)
        }

    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}



