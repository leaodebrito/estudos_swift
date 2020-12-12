//
//  Helper.swift
//  Food Delivery
//
//  Created by Bruno Brito on 02/07/20.
//  Copyright © 2020 Bruno Brito. All rights reserved.
//

import Foundation
import SwiftUI

enum Categories{
    case burger
    case pasta
    case pizza
    case dessert
}

func filterData(by category: Categories) -> [Food]{
    var filteredArray = [Food]()
    
    for food in foodData{
        if food.category == category{
            filteredArray.append(food)
        }
    }
    return filteredArray
}


func categoryString(for category: Categories) -> String{
    switch category{
    case .pizza:
        return "Pizza"
    case .burger:
        return "Burger"
    case .pasta:
        return "Pasta"
    case .dessert:
        return "Desserts"
    }
}
