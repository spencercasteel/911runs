//
//  IncidentTypeViewController.swift
//  911Runs
//
//  Created by Jamie Cummings on 11/30/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class IncidentTypeViewController: UIViewController {

    @IBOutlet weak var incidentTypePicker: UIPickerView!
    
    @IBOutlet weak var incidentTypeOtherTextField: UITextField!
    @IBOutlet weak var propertyUsePicker: UIPickerView!
    
    @IBOutlet weak var mixedPropertiesPicker: UIPickerView!
    
    @IBOutlet weak var aidGivenPicker: UIPickerView!
    
    @IBOutlet weak var actionTakenPicker: UIPickerView!
    
    @IBOutlet weak var vehicleInvolvedSegCon: UISegmentedControl!
    
    var incidentTypePickerData : [String] = [String]()
    var propertyUsePickerData 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
