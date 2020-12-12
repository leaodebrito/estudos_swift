//
//  Food.swift
//  Food Delivery
//
//  Created by Bruno Brito on 02/07/20.
//  Copyright © 2020 Bruno Brito. All rights reserved.
//

import Foundation
import SwiftUI

class Food: Identifiable{
    
    let title: String
    let price: Double
    let category: Categories
    let id: Int
    
    init(title: String, price: Double, category: Categories, id: Int){
        self.title = title
        self.price = price
        self.category = category
        self.id = id
    }
    
}


