//
//  Vehicle.swift
//  911Runs
//
//  Created by Alex Richardson on 12/7/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation

class Vehicle {
    
    var model: String
    var year: String?
    var vin: String?
    var license: String?
    
    
    init(model: String, year: String?, vin: String?, license: String?) {
        self.model = model
        self.year = year
        self.vin = vin
        self.license = license
    }
}
