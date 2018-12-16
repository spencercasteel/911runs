//
//  ApparatusManager.swift
//  911Runs
//
//  Created by Alex Richardson on 12/3/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation

class ApparatusManager {
    
    static let sharedInstance = ApparatusManager()
    
    var apparatusListArray: [String] = []
    
    func getApparatusListCount() -> Int {
        return apparatusListArray.count
    }
    
    func getApparatusName(at index: Int) -> String  {
        return apparatusListArray[index]
    }
    
    func deleteApparatusName(at index: Int) {
        apparatusListArray.remove(at: index)
    }
    
}
