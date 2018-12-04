//
//  IllnessViewController.swift
//  911Runs
//
//  Created by Jamie Cummings on 12/3/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class IllnessViewController: UIViewController {
    
    @IBOutlet weak var causeIllinessPicker: UIPickerView!
    
    var causeIllinessPickerData: [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        causeIllinessPickerData = ["12 Fall", "14 Bite, includes animal bite", "18 Eletrical Shock", "22 Fire and Flames", "23 Firearm", "27 Machinery", "29 Machinery", "29 Motor Vehicle Accident", "30 MVA Pedestrain", "34 Smoke Inhalation", "35 Stabbing Assault", "O Other"]
        
        

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
