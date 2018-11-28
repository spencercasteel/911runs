//
//  StructureRunReportClass.swift
//  911Runs
//
//  Created by Spencer Casteel on 11/28/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation

class StructureRunReport {
    var date: Date
    var name: String
    var address: String
    var phoneNumber: String
    var ownerName: String
    var ownerAddress: String
    var ownerPhoneNumber: String
    var incidentNumber: String
    var exposure: String
    
    init(date: Date, name: String, address: String, phoneNumber: String, ownerName: String, ownerAddress: String, ownerPhoneNumber: String, incidentNumber: String, exposure: String) {
        self.date = date
        self.name = name
        self.address = address
        self.phoneNumber = phoneNumber
        self.ownerName = ownerName
        self.ownerAddress = ownerAddress
        self.ownerPhoneNumber = ownerPhoneNumber
        self.incidentNumber = incidentNumber
        self.exposure = exposure
    }
}
