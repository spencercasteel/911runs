//
//  ProviderViewController.swift
//  911Runs
//
//  Created by Jamie Cummings on 12/3/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class ProviderViewController: UIViewController {

    @IBOutlet weak var initalProviderPicker: UIPickerView!
    
    @IBOutlet weak var initalProviderTextField: UITextField!
    
    @IBOutlet weak var highestProviderPicker: UIPickerView!
    
    @IBOutlet weak var highestLevelProviderTextField: UITextField!
    
    @IBOutlet weak var patientStatusPicker: UIPickerView!
    
    
    var initalProviderPickerData: [String] = [String]()
    var highestProviderPickerData: [String] = [String]()
    var patientSatusPickerData: [String] = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initalProviderPickerData = ["1 First Responder", "2 EMT-B", "O Other"]
        highestProviderPickerData = ["1 First Responder", "2 EMT-B", "O Other"]
        patientSatusPickerData = ["1 Improved", "2 Same", "3 Worse"]
        
        
        

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
