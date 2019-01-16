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
    
    let currentMedicalReport = MedicalManager.sharedInstance.getMedical(at: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        previewWebView.loadHTMLString(MedicalManager.sharedInstance.getMedical(at: 0).HTMLString, baseURL: nil)
        // Do any additional setup after loading the view.
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
