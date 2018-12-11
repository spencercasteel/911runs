//
//  FireDetailsViewController.swift
//  911Runs
//
//  Created by Jamie Cummings on 11/30/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class FireDetailsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        
        if pickerView == HeatSourcePicker {
            
            return HeatSourcePickerData.count
            
        } else if pickerView == FirstIgnitedPicker {
            
            return FirstIgnitedPickerData.count
            
        } else if pickerView == MaterialIgnitedPicker {
            
           return MaterialIgnitedPickerData.count
            
        } else {
            
            return IgnitionPickerData.count
            
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView == HeatSourcePicker {
            
            return HeatSourcePickerData[row]
            
        } else if pickerView == FirstIgnitedPicker {
            
            return FirstIgnitedPickerData[row]
            
        } else if pickerView == MaterialIgnitedPicker {
            
            return MaterialIgnitedPickerData[row]
            
        } else {
            
            return IgnitionPickerData[row]
            
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == HeatSourcePicker {
            let selectedRow = row
            if row != 0 && HeatSourcePickerData[0] == "" {
                HeatSourcePickerData.remove(at: 0)
                pickerView.reloadComponent(component)
                pickerView.selectRow(selectedRow - 1, inComponent: 0, animated: false)
            }
        } else if pickerView == FirstIgnitedPicker {
            let selectedRow = row
            if row != 0 && FirstIgnitedPickerData[0] == "" {
                FirstIgnitedPickerData.remove(at: 0)
                pickerView.reloadComponent(component)
                pickerView.selectRow(selectedRow - 1, inComponent: 0, animated: false)
            }
        } else if pickerView == MaterialIgnitedPicker {
            let selectedRow = row
            if row != 0 && MaterialIgnitedPickerData[0] == "" {
                MaterialIgnitedPickerData.remove(at: 0)
                pickerView.reloadComponent(component)
                pickerView.selectRow(selectedRow - 1, inComponent: 0, animated: false)
            }
        } else {
            let selectedRow = row
            if row != 0 && IgnitionPickerData[0] == "" {
                IgnitionPickerData.remove(at: 0)
                pickerView.reloadComponent(component)
                pickerView.selectRow(selectedRow - 1, inComponent: 0, animated: false)
            }
        }
    }
    
    
    @IBOutlet weak var HeatSourcePicker: UIPickerView!
    
    @IBOutlet weak var FirstIgnitedPicker: UIPickerView!
    
    @IBOutlet weak var MaterialIgnitedPicker: UIPickerView!
    
    @IBOutlet weak var IgnitionPicker: UIPickerView!
    
    var HeatSourcePickerData: [String] = [String]()
    
    var FirstIgnitedPickerData: [String] = [String]()
    
    var MaterialIgnitedPickerData: [String] = [String]()
    
    var IgnitionPickerData: [String] = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        HeatSourcePickerData = ["", "13 Arching", "43 Hot Embers", "61 Cigarette", "63 Und Smoking Mat", "65 Cigarette Lighter", "73 Lightning", "OO Other", "UU Udeterminded"]
        
        FirstIgnitedPickerData = ["", "10 Structure Component", "17 Structure Frame", "20 Furniture", "30 Clothes", "60 Liquids", "81 Electrical Wire", "82 Transformer", "99 Multiple Items", "UU Undetermined"]
        
        MaterialIgnitedPickerData = ["", "12 LP Gas", "23 Gasoline", "25 Kerosene", "27 Cooking Oil", "41 Plastic", "60 Wood/Paper", "71 Fabric", "OO Other"]
        
        IgnitionPickerData = ["", "1 Intentional", "2 Unintentional", "3 Equipment Failure", "4 Act of Nature", "5 Under Investigation", "U Undetermined"]
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        
        self.performSegue(withIdentifier: "showFireDetails2", sender: self)
        
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
