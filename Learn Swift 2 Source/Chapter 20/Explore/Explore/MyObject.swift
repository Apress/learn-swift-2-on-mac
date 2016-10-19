//
//  MyObject.swift
//  Explore
//
//  Created by Waqar Malik on 11/22/15.
//  Copyright © 2015 Apress, Inc. All rights reserved.
//

import Foundation

class MyObject {
    init?(path : String) {
        guard let values = NSArray(contentsOfFile: path) else {
            return nil
        }
        // Do somthing with values
    }
}