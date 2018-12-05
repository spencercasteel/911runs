//
//  VehicalClass.swift
//  911Runs
//
//  Created by Spencer Casteel on 12/4/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation

class Vehical {
    var yearModel: String
    var vin: String
    var license: String
    
    init(yearModel: String, vin: String, license: String) {
    
        self.yearModel = yearModel
        self.vin = vin
        self.license = license
    }
}
