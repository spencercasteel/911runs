//
//  narrativeViewController.swift
//  911Runs
//
//  Created by Spencer Casteel on 12/6/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class narrativeViewController: UIViewController {
    @IBOutlet weak var narrativeTextView: UITextView!
    @IBOutlet weak var officerInChargeTextField: UITextField!
    @IBOutlet weak var MMRTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        guard let narrative = narrativeTextView.text, narrative.trimmingCharacters(in: .whitespacesAndNewlines) != "", let officerInCharge = officerInChargeTextField.text, officerInCharge.trimmingCharacters(in: .whitespacesAndNewlines) != "", let MMR = MMRTextField.text, MMR.trimmingCharacters(in: .whitespacesAndNewlines) != "" else {
            
            showErrorAlert(self, "Empty Fields", "Please enter in a value for all fields", "Close")
            return
        }
        performSegue(withIdentifier: "unwindSegueToVC1", sender: self)
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
