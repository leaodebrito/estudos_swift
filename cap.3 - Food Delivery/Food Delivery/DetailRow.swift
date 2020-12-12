//
//  DetailRow.swift
//  Food Delivery
//
//  Created by Bruno Brito on 02/07/20.
//  Copyright © 2020 Bruno Brito. All rights reserved.
//

import SwiftUI

struct DetailRow: View {
    
    var food: Food
    
    var body: some View {
        
        HStack{
            VStack(alignment: .leading){
            Text("BBQ burger")
                .font(.headline)
                .padding(.top, 10)
            Text("10.00 $")
                .font(.caption)
        }
            Spacer()
            Button(action: {
                print("ORDER RECEIVED")
            }) {
                Text("ORDER")
                    .foregroundColor(.white)
                    
            }
            .frame(width: 80, height: 50)
            .background(Color.orange)
            .cornerRadius(10.0)
        }
    .padding(20)
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow(food: foodData[0])
    }
}
