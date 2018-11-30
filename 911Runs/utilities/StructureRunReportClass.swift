//
//  StructureRunReportClass.swift
//  911Runs
//
//  Created by Spencer Casteel on 11/28/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation

class StructureRunReport {
    //Run info page
    var date: Date?
    var incidentNumber: String
    var FDID: String
    var state: String
    var exposure: String
    var alarmTime: Date?
    var arrivalTime: Date?
    var lastUnitCleared: Date?
    
    //personnel page
    var personOnSceneList: String
    var personOnSceneName: String
    var respondingApparatus: String
    
    //Location Info Page
    var medOnSceneName: String
    var medicUnitNumber: String
    var name: String
    var address: String
    var phone: String
    var ownerName: String
    var ownerAddress: String
    var ownerPhone: String
    
    //Incident Type Page
    var incidentType: String
    var incidentTypeOther: String
    var propertyUse: String
    var mixedUsedProperties: String
    var aidGiven: String
    var actionTaken: String
    var vehicleInvolved: Bool
    
    //Vehical info
    var model: String
    var year: Int
    var vin: String
    var license: String
    
    //Remarks Page
    var remarks: String
    var storiesAbove: Int
    var storiesBelow: Int
    var structureSqFeet: Int
    var areaOfOrigin: String
    
    //Fire detail
    var heatSource: String
    var itemFirstIgnited: String
    var materialTypeIgnited: String
    var causeOfIgnition: String
    
    //Fire details continued....
    var structureType: String
    var buildingStatus: String
    var fireOrigin: String
    var fireSpread: String
    var detectorPresence: String
    
    //Narrative
    var presenceOfExtinguishment: Bool
    var narrative: String
    var officerInCharge: String
    var memberMakingReport: String
    
    init(date: Date?, incidentNumber: String, FDID: String,state: String, exposure: String, alarmTime: Date?, arrivalTime: Date?, lastUnitCleared: Date?, personOnSceneList: String, personOnSceneName: String, respondingApparatus: String, medOnSceneName: String, medicUnitNumber: String, name: String, address: String, phone: String, ownerName: String, ownerAddress: String, ownerPhone: String, incidentType: String, incidentTypeOther: String, propertyUse: String, mixedUsedProperties: String, aidGiven: String, actionTaken: String, vehicleInvolved: Bool, model: String, year: Int, vin: String, license: String, remarks: String, storiesAbove: Int, storiesBelow: Int, structureSqFeet: Int, areaOfOrigin: String, heatSource: String, itemFirstIgnited: String, materialTypeIgnited: String, causeOfIgnition: String, structureType: String, buildingStatus: String, fireOrigin: String, fireSpread: String, detectorPresence: String, presenceOfExtinguishment: Bool, narrative: String, officerInCharge: String, memberMakingReport: String) {
        
        //Run info page
        self.date = date
        self.incidentNumber = incidentNumber
        self.FDID = incidentNumber
        self.state = state
        self.exposure = exposure
        self.alarmTime = alarmTime
        self.arrivalTime = arrivalTime
        self.lastUnitCleared = lastUnitCleared
        
        //personnel page
        self.personOnSceneList = personOnSceneList
        self.personOnSceneName = personOnSceneName
        self.respondingApparatus = respondingApparatus
        
        //Location Info Page
        self.medOnSceneName = medOnSceneName
        self.medicUnitNumber = medicUnitNumber
        self.name = name
        self.address = address
        self.phone = phone
        self.ownerName = ownerName
        self.ownerAddress = ownerAddress
        self.ownerPhone = ownerPhone
        
        //Incident Type Page
        self.incidentType = incidentType
        self.incidentTypeOther = incidentTypeOther
        self.propertyUse = propertyUse
        self.mixedUsedProperties = mixedUsedProperties
        self.aidGiven = aidGiven
        self.actionTaken = actionTaken
        self.vehicleInvolved = vehicleInvolved
        
        //Vehical info
        self.model = model
        self.year = year
        self.vin = vin
        self.license = license
        
        //Remarks Page
        self.remarks = remarks
        self.storiesAbove = storiesAbove
        self.storiesBelow = storiesBelow
        self.structureSqFeet = structureSqFeet
        self.areaOfOrigin = areaOfOrigin
        
        //Fire detail
        self.heatSource = heatSource
        self.itemFirstIgnited = itemFirstIgnited
        self.materialTypeIgnited = materialTypeIgnited
        self.causeOfIgnition = causeOfIgnition
        
        //Fire details continued....
        self.structureType = structureType
        self.buildingStatus = buildingStatus
        self.fireOrigin = fireOrigin
        self.fireSpread = fireSpread
        self.detectorPresence = detectorPresence
        
        //Narrative
        self.presenceOfExtinguishment = presenceOfExtinguishment
        self.narrative = narrative
        self.officerInCharge = officerInCharge
        self.memberMakingReport = memberMakingReport
    }
   
}
