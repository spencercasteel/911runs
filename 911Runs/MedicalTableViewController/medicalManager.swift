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
    
    // personnel Table View
    var personnelListArray: [String] = []
    
    func getPersonnelListCount() -> Int {
        return personnelListArray.count
    }
    
    func getPersonnelName(at index: Int) -> String  {
        return personnelListArray[index]
    }
    
    func deletePersonnelName(at index: Int) {
        personnelListArray.remove(at: index)
    }
    
    //Medic Name And Unit Number
    var medicArray: [String] = []
    
    func getMedArrayCount() -> Int {
        return medicArray.count
    }
    
    func getMedInfo(at index: Int) -> String {
        return medicArray[index]
    }
    
    func deleteMedicInfo(at index: Int) {
        medicArray.remove(at: index)
    }
    
    //Vehical
    var vehicalArray: [Vehical] = []
    
    func getVehicalCount() -> Int {
        return vehicalArray.count
    }
    
    func getVehicalInfo(at index: Int) -> Vehical {
        return vehicalArray[index]
    }
    
    func deleteVehicalInfo(at index: Int) {
        vehicalArray.remove(at: index)
    }
    
    //property page
     var actionsTakenArray: [String] = []
    
    func getActionsTakenCount() -> Int {
        return actionsTakenArray.count
    }
    
    func getActionsTaken(at index: Int) -> String {
        return actionsTakenArray[index]
    }
    
    func deleteActionsTaken(at index: Int) {
        actionsTakenArray.remove(at: index)
    }
}

