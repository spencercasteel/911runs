//
//  medicalManager.swift
//  911Runs
//
//  Created by Spencer Casteel on 12/2/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation

class MedicalManager {
    
    static let sharedInstance = MedicalManager()
    
    var personnelListArray: [String] = []
    
    func getPersonnelListCount() -> Int {
        return personnelListArray.count
    }
    
    func getPersonnelName(at index: Int) -> String  {
        return personnelListArray[index]
    }
}

