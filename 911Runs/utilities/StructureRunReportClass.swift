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
    
    //third page
    
    init(date: Date, name: String, address: String, phoneNumber: String, ownerName: String, ownerAddress: String, ownerPhoneNumber: String, incidentNumber: String, exposure: String, numOfPersonOnScene: Int, personOnSceneList: String, medOnScene: Bool, numOfMedOnScene: Int, medOnSceneName: String, medOnSceneId: Int) {
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
    }
}
