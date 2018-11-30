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
    
   
}
