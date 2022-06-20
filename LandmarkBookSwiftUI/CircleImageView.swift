//
//  CircleImageView.swift
//  LandmarkBookSwiftUI
//
//  Created by Ahmet Ozkan on 20.06.2022.
//

import SwiftUI

struct CircleImageView: View {
    
    var image : Image

    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode:.fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white,lineWidth: 8))
            .shadow(radius: 16)
        
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image:  Image("pisa"))
    }
}
