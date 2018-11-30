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
    
    //Personnel detail
    var officerInCharge: String
    var memberMakingReport: String
    var fireDepartmentID: String
    var state: String
    var alarmTime: String
    var arrivalTime: String
    var lastUnitCleared: String
    
    //Fire detail
    var areaOfOrigin: String
    var heatSource: String
    var itemFirstIgnited: String
    var materialTypeIgnited: String
    
    //Fire details continued....
    var causeOfIgnition: String
    var structureType: String
    var buildingStatus: String
    var fireOrigin: String
    var detectorPresence: String
    
    //Narrative
    var presenceOfExtinguishment: Bool
    var narrative: String
    
   
}
