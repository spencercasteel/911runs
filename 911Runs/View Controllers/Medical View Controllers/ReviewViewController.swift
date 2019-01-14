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
    
    
    let HTMLString = """
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>
</head>
<body>
    <div>
        <h1>Date: #date</h1>
        <h1>Incident Number: #incidentNumber</h1>
        <h1>FDID: #FDID</h1>
        <h1>State: #state</h1>
        <h1>Exposure: #exposure</h1>
        <h1>Alarm Time: #alarmTime</h1>
    </div>
</body>
</html>
"""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let date = HTMLString.replacingOccurrences(of: "#date", with: currentMedicalReport.date)
        let incidentNumber = date.replacingOccurrences(of: "#incidentNumber", with: currentMedicalReport.incidentNumber)
        let FDID = incidentNumber.replacingOccurrences(of: "#FDID", with: currentMedicalReport.FDID)
        let state = FDID.replacingOccurrences(of: "#state", with: currentMedicalReport.state)
        let exposure = state.replacingOccurrences(of: "#exposure", with: currentMedicalReport.exposure)
        let Alarm = exposure.replacingOccurrences(of: "#alarmTime", with: currentMedicalReport.alarmTime)
        previewWebView.loadHTMLString(Alarm, baseURL: nil)
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
