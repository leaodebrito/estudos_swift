//
//  DetailView.swift
//  Food Delivery
//
//  Created by Bruno Brito on 02/07/20.
//  Copyright © 2020 Bruno Brito. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    var currentCategory: Categories
    
    var body: some View {
        List(filterData(by: currentCategory)){ food in
            DetailRow(food: food)
            
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(currentCategory: .burger)
    }
}
