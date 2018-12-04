//
//  IncidentTypeViewController.swift
//  911Runs
//
//  Created by Jamie Cummings on 11/30/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class IncidentTypeViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if pickerView == incidentTypePicker {
        
        return incidentTypePickerData.count
            
        } else if pickerView == propertyUsePicker {
            
            return propertyUsePickerData.count
            
        } else {
            
            return mixedPropertiesPickerData.count
            
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        if pickerView == incidentTypePicker {
            
            return incidentTypePickerData[row]
            
        } else if pickerView == propertyUsePicker {
            
            return propertyUsePickerData[row]
            
        } else {
            
            return mixedPropertiesPickerData[row]
            
        }
        
    }
    

    @IBOutlet weak var incidentTypePicker: UIPickerView!
    
    @IBOutlet weak var incidentTypeOtherTextField: UITextField!
    
    @IBOutlet weak var propertyUsePicker: UIPickerView!
    
    @IBOutlet weak var mixedPropertiesPicker: UIPickerView!
    
    @IBOutlet weak var mixedPropertyTextField: UITextField!
    
    var incidentTypePickerData : [String] = [String]()
    
    var propertyUsePickerData : [String] = [String]()
    
    var mixedPropertiesPickerData : [String] = [String]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        incidentTypePickerData = ["111 Sturcture Fire", "114 Chimnew Fire", "121 Movile Home Fire", "130 Vehicle Fire", "142 Brush Fire", "151 Trash Fire", "161 Outside Structure Fire", "311 Medical Call", "322 Vehicle Accident w/Injury", "412 Natural Gas Leak", "424 Carbon Monoxide Icident", "445 Arching Electrical Equipment", "463 Vehicle Accident No Injury", "600 Good Intent Call", "611 Dispatched/Caneled Enrute", "631 Authorized Control Burn", "730 System Malfunction", "831 Wind Storm/Tornado", "Other Explain"]
        
        propertyUsePickerData = ["130 Place of Worship", "161 Restaurant", "213 School", "419 1 to 2 Family Dwelling", "500 Business","808 Outside Building", "819 Barn","931 Open Land or Field", "960 Street", "Other Explain"]
        
        mixedPropertiesPickerData = ["20 Education Use","40 Residential Use", "65 Farm Use", "OO Other"]
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        
        self.performSegue(withIdentifier: "showIncidentType2", sender: self)
        
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
