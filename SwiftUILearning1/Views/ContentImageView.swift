//
//  ContentImageView.swift
//  SwiftUILearning1
//
//  Created by Ali Raza Amjad on 06/01/2020.
//  Copyright © 2020 Ali Raza. All rights reserved.
//

import SwiftUI

struct ContentImageView: View {
    var body: some View {
        Image("header_image")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .cornerRadius(10)
        .padding(10)
    }
}

struct ContentImageView_Previews: PreviewProvider {
    static var previews: some View {
        ContentImageView()
    }
}
