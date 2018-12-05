//
//  RemarksPageViewController.swift
//  911Runs
//
//  Created by Spencer Casteel on 11/30/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class RemarksPageViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var aidGivenPickerView: UIPickerView!
    @IBOutlet weak var vehicalSegmentedControl: UISegmentedControl!
    
    var aidGivenPickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        aidGivenPickerData = ["1 Mutual Aid Received", "3 Mutual Aid Given", "N None", "M Mutual Aid FDID #'s"]
        // Do any additional setup after loading the view.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return aidGivenPickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return aidGivenPickerData[row]
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        if vehicalSegmentedControl.selectedSegmentIndex == 0 {
            self.performSegue(withIdentifier: "vehicleIntoSegue", sender: self)
        } else {
            self.performSegue(withIdentifier: "patientSegue", sender: self)
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
