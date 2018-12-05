//
//  StructureInfoViewController.swift
//  911Runs
//
//  Created by Alex Richardson on 12/4/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class StructureInfoViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return areaOfOriginPickerData.count
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return areaOfOriginPickerData[row]
        
    }
    
    
    @IBOutlet weak var aboveGradeTextField: UITextField!
    
    @IBOutlet weak var belowGradeTextField: UITextField!
    
    @IBOutlet weak var mainFloorSizeTextField: UITextField!
    
    @IBOutlet weak var areaOfOriginPicker: UIPickerView!
    
    var areaOfOriginPickerData: [String] = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        areaOfOriginPickerData = ["14 Common Room", "21 Bedroom", "24 Kitchen", "25 Bathroom", "26 Laundry Room", "57 Chimney", "73 Ceiling/Crawl Space", "74 Attic", "UU Undertermined"]

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
        
        self.performSegue(withIdentifier: "showFireDetails", sender: self)
        
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
