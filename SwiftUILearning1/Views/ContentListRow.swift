//
//  ContentListRow.swift
//  SwiftUILearning1
//
//  Created by Ali Raza Amjad on 06/01/2020.
//  Copyright © 2020 Ali Raza. All rights reserved.
//

import SwiftUI

struct ContentListRow: View {
    let objFruit: Fruits
    
    var body: some View {
        
        HStack(alignment: .top) {
            Image(objFruit.imageName)
                .resizable()
                .frame(width: 80, height: 80, alignment: .leading)
                .cornerRadius(40)
            
            VStack(alignment: .leading) {
                Text(objFruit.fruitName)
                    .font(.headline)
                Text(objFruit.fruitBenefit)
                    .font(.subheadline)
                
                Spacer()
            }
        }
        
    }
}

struct ContentListRow_Previews: PreviewProvider {
    static var previews: some View {
        ContentListRow(objFruit: Fruits)
    }
}
