//
//  PatientsViewController.swift
//  911Runs
//
//  Created by Jamie Cummings on 12/3/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class PatientsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var providerAssessmentPicker: UIPickerView!
    
    var providerAssessmentPickerData: [String] = [String]()
    
    var valueSelected: Int
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        providerAssessmentPickerData = ["10 Abdominal Pain", "11 Airway Obstrution","12 Allergic Reation", "13 Altered LOC", "14 Behavioral/Psych", "15 Burns", "16 Cardiac Arrest", "18 Chest Pain", "19 Diabetic Symptom", "20 Do Not Resuscitate", "21 Electrocution", "22 General Illness", "23 Hemorrhaging/Bleeding", "24 Hyperthermia", "25 Hypothermia", "26 Hypovolemia", "27 Inhalation Injury", "28 Obvious Death", "29 OD/Poisoning", "30 Pregnancy/OB", "31 Pespiratory Arrest", "32 Pespiratory Distress", "33 Seizures", "34 Sexual Assault", "Sting/Bite", "36 Stroke/CVA", "37 Syncope", "38 Trauma", "OO Other", "NN None/No Patient"]
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personnelList") as! personnelNameTableViewController
        
        return cell
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return providerAssessmentPickerData.count
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "patientsToInjury", sender: self)
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        valueSelected = row
        
        return providerAssessmentPickerData[row]
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func addAssessmentButtonTapped(_ sender: Any) {
    providerAssessmentPicker
    }
}
