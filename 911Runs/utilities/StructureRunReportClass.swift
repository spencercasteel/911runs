//
//  StructureRunReportClass.swift
//  911Runs
//
//  Created by Spencer Casteel on 11/28/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation

class StructureRunReport {
    //Injured person info page
    var date: Date
    var name: String
    var address: String
    var phoneNumber: String
    var ownerName: String
    var ownerAddress: String
    var ownerPhoneNumber: String
    var incidentNumber: String
    var exposure: String
    
    //personnel page
    var numOfPersonOnScene: Int
    var personOnSceneList: String
    var medOnScene: Bool
    var numOfMedOnScene: Int
    var medOnSceneName: String
    var medOnSceneId: Int
    
    //Incedent type page
    var incidentType: String
    var propertyUse: String
    var mixedUsedProp: String
    
    //Responding vehicles
    var respondingApparatus: String
    var aidGiven: String
    var actionGiven: String
    var actionTaken: String
    var numOfStoriesAbove: Int
    var numOfStoriesBelow: Int
    var structureSquareFeet: Int
    
    //Vehical info
    var numOfVehicals: Int
    var model: String
    var year: Int
    var vin: String
    var license: String
    
    //personnel detail
    var officerInCharge: String
    var memberMakingReport: String
    var fireDepartmentID: String
    var state: String
    var alarmTime: String
    var arrivalTime: String
    var lastUnitCleared: String
    
    init(date: Date, name: String, address: String, phoneNumber: String, ownerName: String, ownerAddress: String, ownerPhoneNumber: String, incidentNumber: String, exposure: String, numOfPersonOnScene: Int, personOnSceneList: String, medOnScene: Bool, numOfMedOnScene: Int, medOnSceneName: String, medOnSceneId: Int, incidentType: String, propertyUse: String, mixedUsedProp: String, respondingApparatus: String, aidGiven: String, actionGiven: String, actionTaken: String, numOfStoriesAbove: Int, numOfStoriesBelow: Int, structureSquareFeet: Int, numOfVehicals: Int, model: String, year: Int, vin: String, license: String, officerInCharge: String, memberMakingReport: String, fireDepartmentID: String, state: String, alarmTime: String, arrivalTime: String, lastUnitCleared: String) {
        
        //Injured person info page
        self.date = date
        self.name = name
        self.address = address
        self.phoneNumber = phoneNumber
        self.ownerName = ownerName
        self.ownerAddress = ownerAddress
        self.ownerPhoneNumber = ownerPhoneNumber
        self.incidentNumber = incidentNumber
        self.exposure = exposure
        
       //personnel page
        self.numOfPersonOnScene = numOfPersonOnScene
        self.personOnSceneList = personOnSceneList
        self.medOnScene = medOnScene
        self.numOfMedOnScene = numOfMedOnScene
        self.medOnSceneName = medOnSceneName
        self.medOnSceneId = medOnSceneId
        
        //Incedent type page
        self.incidentType = incidentType
        self.propertyUse = propertyUse
        self.mixedUsedProp = mixedUsedProp
        
        //Responding vehicles
        self.respondingApparatus = respondingApparatus
        self.aidGiven = aidGiven
        self.actionGiven = actionGiven
        self.actionTaken = actionTaken
        self.numOfStoriesAbove = numOfStoriesAbove
        self.numOfStoriesBelow = numOfStoriesBelow
        self.structureSquareFeet = structureSquareFeet
        
        //Vehical info
        self.numOfVehicals = numOfVehicals
        self.model = model
        self.year = year
        self.vin = vin
        self.license = license

        //personnel detail
        self.officerInCharge = officerInCharge
        self.memberMakingReport = memberMakingReport
        self.fireDepartmentID = fireDepartmentID
        self.state = state
        self.alarmTime = alarmTime
        self.arrivalTime = arrivalTime
        self.lastUnitCleared = lastUnitCleared
    }
}
