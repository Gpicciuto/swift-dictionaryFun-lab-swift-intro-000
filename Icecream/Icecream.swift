//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//
import Foundation

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream = ["Joe" : "Peanut Butter and Chocolate",
                                     "Tim" : "Natural Vanilla",
                                     "Sophie" : "Mexican Chocolate",
                                     "Deniz" : "Natural Vanilla",
                                     "Tom" : "Mexican Chocolate",
                                     "Jim" : "Natural Vanilla",
                                     "Susan" : "Cookies 'N' Cream"]
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var names = [String]()
        for (name, favoriteFlavor) in favoriteFlavorsOfIceCream{
            if flavor == favoriteFlavor{
                names.append(name)
            }
        }
        return names
    }
    
    // 3.
    func count(forFlavor: String) -> Int{
        var count = 0
        for (_, favoriteFlavor) in favoriteFlavorsOfIceCream{
            if forFlavor == favoriteFlavor{
               count += 1
            }
        }
        return count
    }
    // 4.
    func flavor(forPerson person: String) -> String?{
        for (name, favoriteFlavor) in favoriteFlavorsOfIceCream{
            if person == name {
                return favoriteFlavor
            }
        }
        return nil
    }
    // 5.
    func replace(flavor: String, forPerson: String) -> Bool {
        for (name, _) in favoriteFlavorsOfIceCream{
            if forPerson == name {
                favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson)
                return true
            }
        }
        return false
    }
    // 6.
    func remove(person: String) -> Bool{
        var wasGoingtoAttend = Bool()
        for (name, _) in favoriteFlavorsOfIceCream{
            if person == name {
                favoriteFlavorsOfIceCream.removeValue(forKey: person)
                wasGoingtoAttend = true
            }
        }
        return wasGoingtoAttend
    }
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    // 8.
    func add(person: String, withFlavor: String) -> Bool {
        var wasAdded = Bool()
        for (name, _) in favoriteFlavorsOfIceCream{
            if person == name {
                wasAdded = false
            }else{
                favoriteFlavorsOfIceCream[person] = withFlavor
                wasAdded = true
            }
        }
        return wasAdded
    }
    // 9.
    func attendeeList() -> String{
        let sortedList = favoriteFlavorsOfIceCream.sorted(by: <)
        var list = String()
        for (name, flavor) in sortedList {
            list.append("\(name) likes \(flavor)\n")
        }
        list.removeLast()
        return list
    }
    
    
    //DONE
    
    
    
    

}
