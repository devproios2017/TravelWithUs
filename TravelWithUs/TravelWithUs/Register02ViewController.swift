//
//  Register02ViewController.swift
//  GenCar
//
//  Created by A Tran on 3/24/17.
//  Copyright © 2017 com.dotn. All rights reserved.
//

import UIKit

class Register02ViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate{
    @IBOutlet weak var bottomViewPickerConstraint: NSLayoutConstraint!
    @IBOutlet weak var viewPicker: UIView!
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var chooseCityButton: UIButton!
    var selectCityString : String = "Hà Nội";
    

    
    
    @IBAction func CloseChooseCityButton(_ sender: UIButton) {
        pickerView.dataSource = self
        pickerView.delegate = self
        UIView.animate(withDuration: 0.2, animations: {
             self.viewPicker.frame.origin.y = UIScreen.main.bounds.height
        })
    }
    
    
    @IBAction func SelectCityButtonClicked(_ sender: Any) {
        if( selectCityString.isEmpty == false ){
             print("selectCity: ",selectCityString)
            
            //set titile
           chooseCityButton.setTitle(selectCityString, for: UIControlState.normal)
        }
    }
    
    
    
    @IBAction func chooseCityButtonClicked(_ sender: Any) {
        
        if self.viewPicker.frame.origin.y >= self.viewPicker.frame.size.height {
            //Hien thi viewpicker
            UIView.animate(withDuration: 0.2, animations: {
                self.viewPicker.frame.origin.y = UIScreen.main.bounds.height - self.viewPicker.frame.size.height
            })
        }
    }
    @IBAction func RegisterButtonClicked(_ sender: UIButton) {
    }
    
    var itemsPicker = ["Hà Nội", "TP Hồ Chí Minh","Đà Nẵng", "Hải Phòng"]
    
    @IBAction func comeBackButtonClicked(_ sender: UIButton) {
    print("come back login 2")
        self.navigationController!.popViewController(animated:true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pickerView.dataSource = self
        pickerView.delegate = self
        bottomViewPickerConstraint.constant = -viewPicker.frame.size.height
        self.view.updateConstraints()
        
               }

    override var prefersStatusBarHidden: Bool{
        return true
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIApplication.shared.setStatusBarStyle(UIStatusBarStyle.lightContent, animated: true)

    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return itemsPicker.count
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return itemsPicker[row]
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 44
    }
    
    //su kien user lua chon dong- cot
    public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
       // print("Row",row,"- Col",component);
        self.selectCityString=itemsPicker[row];
    }

}
