//
//  ReviewViewController.swift
//  911Runs
//
//  Created by spencer casteel on 1/13/19.
//  Copyright © 2019 Spencer Casteel. All rights reserved.
//

import UIKit
import WebKit

class ReviewViewController: UIViewController {

    @IBOutlet weak var previewWebView: WKWebView!
    
    let medClass = MedicalManager.sharedInstance.getMedical(at: MedicalManager.sharedInstance.getLastMedical())
    
   // medClass.zip = zipTextField.text!; medClass.phone = phoneTextField.text! ownerInfoSegmentedControl.selectedSegmentIndex == 1 { medClass.ownerName = ownerNameTextField.text!; medClass.ownerAddress = ownerAddressTextField.text!; medClass.ownerCity = ownerCityTextField.text!; medClass.ownerState = ownerStateTextField.text!; medClass.ownerZip = ownerZipTextField.text!; medClass.ownerPhone = ownerPhoneTextField.text!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let HTMLString = medClass.HTMLString; let arrivalTime = HTMLString.replacingOccurrences(of: "#arrivalTime", with: medClass.arrivalTime); let LUC = arrivalTime.replacingOccurrences(of: "#LUC", with: medClass.lastUnitCleared); let location = LUC.replacingOccurrences(of: "#location", with: medClass.locationName); let address = location.replacingOccurrences(of: "#address", with: medClass.address); let city = address.replacingOccurrences(of: "#city", with: medClass.city); let state = city.replacingOccurrences(of: "#state", with: medClass.stateLoc); let zip = state.replacingOccurrences(of: "#zip", with: medClass.zip)
        
        
        previewWebView.loadHTMLString(MedicalManager.sharedInstance.getMedical(at: MedicalManager.sharedInstance.getLastMedical()).HTMLString, baseURL: nil)
        // Do any additional setup after loading the view.
        print(MedicalManager.sharedInstance.medicalArray.count)
        
        
    }
    
    @IBAction func EmailButtonTapped(_ sender: Any) {
        let vc = UIActivityViewController(activityItems: [MedicalManager.sharedInstance.HTMLString], applicationActivities:nil)
        
        if let popoverController = vc.popoverPresentationController {
            popoverController.sourceView = self.view
            popoverController.sourceRect = self.view.bounds
        }
        self.present(vc, animated: true, completion: nil)
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
