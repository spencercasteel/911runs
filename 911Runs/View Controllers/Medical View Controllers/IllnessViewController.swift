//
//  IllnessViewController.swift
//  911Runs
//
//  Created by Jamie Cummings on 12/3/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class IllnessViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var causeIllinessPicker: UIPickerView!
    var causeIllinessPickerData: [String] = [String]()
    @IBOutlet weak var otherTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        otherTextField.isHidden = true
        causeIllinessPickerData = ["12 Fall", "14 Bite, includes animal bite", "18 Eletrical Shock", "22 Fire and Flames", "23 Firearm", "27 Machinery", "29 Motor Vehicle Accident", "30 MVA Pedestrain", "34 Smoke Inhalation", "35 Stabbing Assault", "O Other"]
        
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return causeIllinessPickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return causeIllinessPickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if row == 10 {
           otherTextField.isHidden = false
        } else {
            otherTextField.isHidden = true
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
