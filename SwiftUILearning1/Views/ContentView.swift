//
//  ContentView.swift
//  SwiftUILearning1
//
//  Created by Ali Raza Amjad on 06/01/2020.
//  Copyright © 2020 Ali Raza. All rights reserved.
//

import SwiftUI

struct Fruits: Identifiable {
    var id: Int
    var fruitName, fruitBenefit, imageName: String
}

struct ContentView: View {
    let arrayFruit: [Fruits] = [
        .init(id: 0, fruitName: "Apple", fruitBenefit: "Apples are high in fiber and water — two qualities that make them filling.", imageName: "apple"),
        .init(id: 1, fruitName: "Grapes", fruitBenefit: "They help repair the damage to your cells caused by free radicals, which are harmful molecules that cause oxidative stress.", imageName: "grapes"),
        .init(id: 2, fruitName: "Orange", fruitBenefit: "Oranges, being rich in Vitamins B6, help support the production of haemoglobin and also help keep blood pressure under check due to the presence of magnesium.", imageName: "orange")
        ]
    
    var body: some View {
        VStack {
            ContentImageView()
            List {
                ForEach(arrayFruit, id: \.id) { objFruit in
                    ContentListRow(objFruit: objFruit)
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentListRow: View {
    let objFruit: Fruits
    
    var body: some View {
        
        HStack(alignment: .top) {
            Image(objFruit.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80, alignment: .leading)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.green, lineWidth: 2))
            
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
