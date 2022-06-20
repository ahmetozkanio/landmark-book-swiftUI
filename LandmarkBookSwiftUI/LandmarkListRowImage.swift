//
//  LandmarkListRowImage.swift
//  LandmarkBookSwiftUI
//
//  Created by Ahmet Ozkan on 20.06.2022.
//

import SwiftUI

struct LandmarkListRowImage: View {
    var landmarkImageName : String
    var body: some View {
        Image(landmarkImageName)
            .resizable()
            .aspectRatio( contentMode: .fit)
            .frame(width:50,height: 50)
      
        
    }
}

struct LandmarkListRowImage_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListRowImage(landmarkImageName: "pisa")
    }
}
