//
//  PersonnelManager.swift
//  911Runs
//
//  Created by Alex Richardson on 12/3/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation

class PersonnelManager {
    
    static let sharedInstance = PersonnelManager()
    
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
    
}
