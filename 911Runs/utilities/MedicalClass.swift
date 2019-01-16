//
//  MedicalClass.swift
//  911Runs
//
//  Created by spencer casteel on 1/13/19.
//  Copyright © 2019 Spencer Casteel. All rights reserved.
//

import Foundation

class Medical {
    //Medical Report Page
    var date: String
    var incidentNumber: String
    var FDID: String
    var state: String
    var exposure: String
    var alarmTime: String
    
    //location page
    var arrivalTime: String
    var lastUnitCleared: String
    var locationName: String
    var address: String
    var city: String
    var stateLoc: String
    var zip: String
    var phone: String
    var ownerName: String
    var ownerAddress: String
    var ownerCity: String
    var ownerState: String
    var ownerZip: String
    var ownerPhone: String
    
    //Personnel on scene
    var personnelOnScene: String
    
    //HTMLString
    var HTMLString: String
    
    init(date: String, incidentNumber: String, FDID: String, state: String, exposure: String, alarmTime: String, arrivalTime: String, lastUnitCleared: String, locationName: String, address: String, city: String, stateLoc: String, zip: String, phone: String, ownerName: String, ownerAddress: String, ownerCity: String, ownerState: String, ownerZip: String, ownerPhone: String, personnelOnScene: String, HTMLString: String) {
        self.date = date
        self.incidentNumber = incidentNumber
        self.FDID = FDID
        self.state = state
        self.exposure = exposure
        self.alarmTime = alarmTime
        
        //location page
        self.arrivalTime = arrivalTime
        self.lastUnitCleared = lastUnitCleared
        self.locationName = locationName
        self.address = address
        self.city = city
        self.stateLoc = stateLoc
        self.zip = zip
        self.phone = phone
        self.ownerName = ownerName
        self.ownerAddress = ownerAddress
        self.ownerCity = ownerCity
        self.ownerState = ownerState
        self.ownerZip = ownerZip
        self.ownerPhone = ownerPhone
        
        //personnel on scene
        self.personnelOnScene = personnelOnScene
        
        //HTML
        self.HTMLString = HTMLString
    }

}
