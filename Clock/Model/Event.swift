//
//  Event.swift
//  clock
//
//  Created by Paul on 15/12/2015.
//  Copyright © 2015 paulboiseau. All rights reserved.
//

import UIKit

class Event: NSObject {
    
    static let parseClassname = "Event"
    
    let name: String
    let date: String
    let address: String
    let lat: Float
    let long: Float
    
    init(name: String, date: String, address: String, lat: Float, long: Float) {
        self.name = name
        self.date = date
        self.address = address
        self.lat = lat
        self.long = long
    }
    
}
