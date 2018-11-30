//
//  RemarksPageViewController.swift
//  911Runs
//
//  Created by Spencer Casteel on 11/30/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class RemarksPageViewController: UIViewController {
    
    @IBOutlet weak var vehicalSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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
