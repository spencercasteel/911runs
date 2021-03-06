//
//  RunPickerViewController.swift
//  911Runs
//
//  Created by Spencer Casteel on 11/27/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class RunPickerViewController: UIViewController {

    @IBOutlet weak var reportSelector: UISegmentedControl!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    
        nextButton.layer.cornerRadius = 4
        
    }

    @IBAction func nextButtonTapped(_ sender: Any) {
        
        if reportSelector.selectedSegmentIndex == 0 {
            
            self.performSegue(withIdentifier: "MedicalSegue", sender: self)
            
        } else {
            
            self.performSegue(withIdentifier: "StructureSegue", sender: self)
            
        }
        
    }
    
    @IBAction func unwindToVC1(segue: UIStoryboardSegue) { }
}

