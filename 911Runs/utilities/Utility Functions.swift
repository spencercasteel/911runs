//
//  Utility Functions.swift
//  911Runs
//
//  Created by Alex Richardson on 11/28/18.
//  Copyright © 2018 Spencer Casteel. All rights reserved.
//

import Foundation
import UIKit

func showErrorAlert(_ viewController: UIViewController, _ name: String, _ msg: String, _ dismiss: String) {
    
    let errorAlert = UIAlertController(title: name, message: msg, preferredStyle: .actionSheet)
    
    let dismissAction = UIAlertAction(title: dismiss, style: .default, handler: nil)
    
    errorAlert.addAction(dismissAction)
    
    viewController.present(errorAlert, animated: true, completion: nil)
    
}
