//
//  LandmarkListRow.swift
//  LandmarkBookSwiftUI
//
//  Created by Ahmet Ozkan on 20.06.2022.
//

import SwiftUI

struct LandmarkListRow: View {
   
    var landmark : Landmark
    var body: some View {
        HStack(){
            LandmarkListRowImage(landmarkImageName: landmark.imageName)
            Text(landmark.name)
        }
    }
}

struct LandmarkListRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListRow(landmark: londonBridgeLandmark)
    }
}
