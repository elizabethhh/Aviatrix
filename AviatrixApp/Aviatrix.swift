//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    var running = false
    var location = "St. Louis"
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func refuel() {
        
    }
    
    func flyTo(destination : String) {
        location = destination
    }
    
    func distanceTo(data: AviatrixData, target : String) -> Int {
        return data.knownDistances[location]![target]!
    }
    
    func knownDestinations(data: AviatrixData) -> [String] {
        return Array(data.knownDistances.keys)
    }
}
