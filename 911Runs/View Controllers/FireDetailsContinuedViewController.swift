//
//  FireDetailsContinuedViewController.swift
//  911Runs
//
//  Created by Jamie Cummings on 11/30/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class FireDetailsContinuedViewController: UIViewController {
    
    @IBOutlet weak var structureTypePicker: UIPickerView!
    @IBOutlet weak var buildingStatusPicker: UIPickerView!
    @IBOutlet weak var originPicker: UIPickerView!
    @IBOutlet weak var fireSpreadPicker: UIPickerView!
    @IBOutlet weak var detectorPicker: UIPickerView!
    
    var structureTypePickerData: [String] = [String]()
    var buildingStatusPickerData: [String] = [String]()
    var originPickerData: [String] = [String]()
    var fireSpreadPickerData: [String] = [String]()
    var detectorPickerData: [String] = [String]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        structureTypePickerData = ["1 Enclosed Building", "2 Mobile/Portable", "O Other"]
        buildingStatusPickerData = ["2 Occupied", "5 Vacant", "O Other"]
        originPickerData = ["Basment", "1st Floor", "2nd Floor"]
        fireSpreadPickerData = ["1 Confined to Object", "2 Confined to Room","3 Confined to Floor", "4 Confined to Building", "5 Beyond Building"]
        detectorPickerData = ["1 Present", "N Not Present", "U Unable to Determine"]
        

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
