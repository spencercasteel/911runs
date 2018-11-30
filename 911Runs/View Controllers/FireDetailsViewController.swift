//
//  FireDetailsViewController.swift
//  911Runs
//
//  Created by Jamie Cummings on 11/30/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class FireDetailsViewController: UIViewController {
    
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
        
        HeatSourcePickerData = ["13 Arching", "43 Hot Embers", "61 Cigarette", "63 Und Smoking Mat", "65 Cigarette Lighter", "73 Lightning", "OO Other", "UU Udeterminded"]
        
        FirstIgnitedPickerData = ["10 Structure Component", "17 Structure Frame", "20 Furniture", "30 Clothes", "60 Liquids", "81 Electrical Wire", "82 Transformer", "99 Multiple Items", "UU Undetermined"]
        
        MaterialIgnitedPickerData = ["12 LP Gas", "23 Gasoline", "25 Kerosene", "27 Cooking Oil", "41 Plastic", "60 Wood/Paper", "71 Fabric", "OO Other"]
        
        IgnitionPickerData = ["1 Intentional", "2 Unintentional", "3 Equipment Failure", "4 Act of Nature", "5 Under Investigation", "U Undetermined"]
        

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
