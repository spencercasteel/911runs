//
//  InjuryViewController.swift
//  911Runs
//
//  Created by Jamie Cummings on 12/3/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class InjuryViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var injuryPicker: UIPickerView!
    
    
    var bodySitePickerData: [String] = [String]()
    var injuryTyperPickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bodySitePickerData = ["1 Head", "2 Neck and Shoulder", "3 Thorax", "4 Abdomen", "5 Spine", "6 Upper Extremities", "7 Lower Extremities", "8 Internal Injuries", "9 Multiple Body Parts", "N None"]
        
        injuryTyperPickerData = ["10 Amputation","11 Blunt Injury", "12 Burn", "13 Crush", "14 Dislocate/Fracture", "15 Gun Shot", "16 Laceration", "17 Pain without Swelling", "18 Puncture/Stab", "Soft Tissue Swelling", "OO Other"]
        

        // Do any additional setup after loading the view.
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        if component == 0 {
            return bodySitePickerData.count
        } else {
            return injuryTyperPickerData.count
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
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
