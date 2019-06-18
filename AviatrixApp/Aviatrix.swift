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
    var distanceTraveled = 0.0
    var maxFuel = 5000.0
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var fuelCost = 0.0
    
    func start() -> Bool {
        running = true
        return running
    }
    
    func findNumberofGallons(data: AviatrixData)-> Double{
        let buyGallons = maxFuel - fuelLevel
        return buyGallons
    }
    
    func refuel(data: AviatrixData){
        numbers = AviatrixData()
        fuelCost += data.fuelPrices[location]! * (findNumberofGallons(data: numbers))
        fuelLevel = 5000
    }
    
    func flyTo(data: AviatrixData, destination : String) {
        var currentMiles = Double((data.knownDistances[location]?[destination])!)
        distanceTraveled += currentMiles
        location = destination
        fuelLevel = fuelLevel - (currentMiles / milesPerGallon)
    }
    
    func distanceTo(data: AviatrixData, target : String) -> Int {
        return data.knownDistances[location]![target]!
    }
    
    func knownDestinations(data: AviatrixData) -> [String] {
        return Array(data.knownDistances.keys)
    }
}
