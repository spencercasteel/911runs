//
//  MedicManager.swift
//  911Runs
//
//  Created by Alex Richardson on 12/3/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation

class MedicManager {
    
    static let sharedInstance = MedicManager()
    
    var medicListArray: [String] = []
    
    func getApparatusListCount() -> Int {
        return medicListArray.count
    }
    
    func getMedicName(at index: Int) -> String  {
        return medicListArray[index]
    }
    
    func deleteMedicName(at index: Int) {
        medicListArray.remove(at: index)
    }
    
}
