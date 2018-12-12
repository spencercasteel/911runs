//
//  ApparatusViewController.swift
//  911Runs
//
//  Created by Spencer Casteel on 12/6/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import UIKit

class ApparatusViewController: UIViewController {

    @IBOutlet weak var addApparatusButton: UIButton!
    
    @IBOutlet weak var addMedicButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addApparatusButton.layer.cornerRadius = 4
        addMedicButton.layer.cornerRadius =  4
        
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
