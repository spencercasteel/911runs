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
    
    @IBOutlet weak var mixedPropertyTextField: UITextField!
    
    @IBOutlet weak var aidGivenPicker: UIPickerView!
    
    @IBOutlet weak var actionTakenPicker: UIPickerView!
    
    @IBOutlet weak var vehicleInvolvedSegCon: UISegmentedControl!
    
    var incidentTypePickerData : [String] = [String]()
    var propertyUsePickerData : [String] = [String]()
    var mixedPropertiesPickerData : [String] = [String]()
    var aidGivenPickerData :[String] = [String]()
    var actionTakenPickerData :[String] = [String]()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        incidentTypePickerData = ["111 Sturcture Fire", "114 Chimnew Fire", "121 Movile Home Fire", "130 Vehicle Fire", "142 Brush Fire", "151 Trash Fire", "161 Outside Structure Fire", "311 Medical Call", "322 Vehicle Accident w/Injury", "412 Natural Gas Leak", "424 Carbon Monoxide Icident", "445 Arching Electrical Equipment", "463 Vehicle Accident No Injury", "600 Good Intent Call", "611 Dispatched/Caneled Enrute", "631 Authorized Control Burn", "730 System Malfunction", "831 Wind Storm/Tornado", "Other"]
        
        propertyUsePickerData = ["130 Place of Worship", "161 Restaurant", "213 School", "419 1 to 2 Family Dwelling", "500 Business","808 Outside Building", "819 Barn","931 Open Land or Field", "960 Street"]
        
        mixedPropertiesPickerData = ["20 Education Use","40 Residential Use", "65 Farm Use", "00 Other"]
        
        aidGivenPickerData = ["1 Mutual Aid Received", "3 Mutual Aid Given", "N None", "M Mutual Aid FDID #'s"]
        
        actionTakenPickerData = ["11 Extinguish", "12 Salvage and Overhaul", "31 Provide First Aid", "Provide BLS", "51 Ventilate", "52 Forcible Entry", "82 Notify Other Agencies", "86 Investigate", "93 Canceled Enroute"]
        
        
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
