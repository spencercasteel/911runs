//
//  ActionsManager.swift
//  911Runs
//
//  Created by Alex Richardson on 12/4/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation

class ActionManager {
    
    static let sharedInstance = ActionManager()
    
    var actionListArray: [String] = []
    
    func getActionListCount() -> Int {
        
        return actionListArray.count
        
    }
    
    func getActionName(at index: Int) -> String  {
        
        return actionListArray[index]
        
    }
    
    func deleteActionName(at index: Int) -> String {
        
        return actionListArray.remove(at: index)
        
    }
    
}
