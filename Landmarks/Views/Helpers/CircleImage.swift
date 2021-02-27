//
//  CircleImage.swift
//  Landmarks
//
//  Created by vincent schmitt on 26/02/2021.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
    //    Image("Couverier")
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth:4))
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("Couverier"))
    }
}
