//
//  Aviatrix.swift
//  AviatrixApp
//
//  Created by Amy Holt on 6/10/18.
//  Copyright © 2018 Amy Holt. All rights reserved.
//

import Foundation

class Aviatrix {
    var data = AviatrixData()
    var author = " "
    var location = "St. Louis"
    var distanceTraveled = 0
    var maxFuel = 5000
    var fuelLevel = 5000.0
    var milesPerGallon = 0.4
    var fuelCost = 0.0
    
    init (plane1Author: String){
        author = plane1Author
    }
    
    func start() -> Bool {
        var running = false
        
        func start() -> Bool {
            running = true
            return running
        }
        return true
    }
    
    func refuel() {
        var gallonsNeeded = Double(maxFuel) - fuelLevel
        fuelLevel = 5000
        fuelCost += gallonsNeeded * data.fuelPrices[location]!
    }
    
    
    func flyTo(destination : String) {
        distanceTraveled += data.knownDistances[location]![destination]!
        let fuelUsed = Double(distanceTraveled)/0.4
        fuelLevel -= fuelUsed
        location = destination
        maxFuel += data.knownDistances[location]![destination]!
        
    }
    
    func distanceTo(target : String) -> Int{
        return data.knownDistances[location]![target]!
    
    }
     
    
    func knownDestinations() -> [String] {
       return ["St. Louis", "Phoenix", "Denver", "SLC"]
    }
}
