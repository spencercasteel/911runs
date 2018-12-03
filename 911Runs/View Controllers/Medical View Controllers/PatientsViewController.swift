//
//  PatientsViewController.swift
//  911Runs
//
//  Created by Jamie Cummings on 12/3/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class PatientsViewController: UIViewController {

    @IBOutlet weak var providerAssessmentPicker: UIPickerView!
    
    var providerAssessmentPickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        providerAssessmentPickerData = ["10 Abdominal Pain", "11 Airway Obstrution","12 Allergic Reation", "13 Altered LOC", "14 Behavioral/Psych", "15 Burns", "16 Cardiac Arrest", "18 Chest Pain", "19 Diabetic Symptom", "20 Do Not Resuscitate", "21 Electrocution", "22 General Illness", "23 Hemorrhaging/Bleeding", "24 Hyperthermia", "25 Hypothermia", "26 Hypovolemia", "27 Inhalation Injury", "28 Obvious Death", "29 OD/Poisoning", "30 Pregnancy/OB", "31 Pespiratory Arrest", "32 Pespiratory Distress", "33 Seizures", "34 Sexual Assault", "Sting/Bite", "36 Stroke/CVA", "37 Syncope", "38 Trauma", "OO Other", "NN None/No Patient"]

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
