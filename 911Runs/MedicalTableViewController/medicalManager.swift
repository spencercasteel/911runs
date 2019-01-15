//
//  medicalManager.swift
//  911Runs
//
//  Created by Spencer Casteel on 12/2/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation

class MedicalManager {
    
    static let sharedInstance = MedicalManager()
    
    //array of medical reports
    var medicalArray: [Medical] = []
    
    
    func getMedical(at index: Int) -> Medical  {
        return medicalArray[index]
    }
    
    var HTMLString = """
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
    <center>
        <div id="MedicalReportPage">
            <h2>Medical Report</h2>
            <p>Date: #date</p>
            <p>Incident Number: #incidentNumber</p>
            <p>FDID: #FDID</p>
            <p>State: #stateNum</p>
            <p>Exposure: #exposure</p>
            <p>Alarm Time: #alarmTime</p>
        </div>
        <div id="LocationPage">
            <h2>Location Page</h2>
            <p>Arrival Time: #arrivalTime</p>
            <p>Last Unit Cleared: #LUC</p>
            <p>Location: #location</p>
            <p>#address</p>
            <p>#city, #state, #zip</p>
            <p>#phone</p>
            #ownerInfo
        </div>
    </center>
</body>
</html>
"""
    
    // personnel Table View
    var personnelListArray: [String] = []
    
    func getPersonnelListCount() -> Int {
        return personnelListArray.count
    }
    
    func getPersonnelName(at index: Int) -> String  {
        return personnelListArray[index]
    }
    
    func deletePersonnelName(at index: Int) {
        personnelListArray.remove(at: index)
    }
    
    //Medic Name And Unit Number
    var medicArray: [String] = []
    
    func getMedArrayCount() -> Int {
        return medicArray.count
    }
    
    func getMedInfo(at index: Int) -> String {
        return medicArray[index]
    }
    
    func deleteMedicInfo(at index: Int) {
        medicArray.remove(at: index)
    }
    
    //property page
     var actionsTakenArray: [String] = []
    
    func getActionsTakenCount() -> Int {
        return actionsTakenArray.count
    }
    
    func getActionsTaken(at index: Int) -> String {
        return actionsTakenArray[index]
    }
    
    func deleteActionsTaken(at index: Int) {
        actionsTakenArray.remove(at: index)
    }
    
    //saftey Equipment page
    var safteyEquipmentUsedArray: [String] = []
    
    func getsafteyEquipmentUsedCount() -> Int {
        return safteyEquipmentUsedArray.count
    }
    
    func getsafteyEquipmentUsed(at index: Int) -> String {
        return safteyEquipmentUsedArray[index]
    }
    
    func deletesafteyEquipmentUsed(at index: Int) {
        safteyEquipmentUsedArray.remove(at: index)
    }
    
    //injury page
    var injuryCodeArray: [String] = []
    
    func getInjuryCodeArrayCount() -> Int {
        return injuryCodeArray.count
    }
    
    func getInjuryCodeUsed(at index: Int) -> String {
        return injuryCodeArray[index]
    }
    
    func deleteInjuryCodeUsed(at index: Int) {
        injuryCodeArray.remove(at: index)
    }
}

