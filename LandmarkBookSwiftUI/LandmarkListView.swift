//
//  LandmarkListView.swift
//  LandmarkBookSwiftUI
//
//  Created by Ahmet Ozkan on 20.06.2022.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        
        NavigationView{
        List(landmarkArray){ landmark in
            NavigationLink {
                DetailsView(chosenLandMark: landmark)} label: {
               
                     
                       LandmarkListRow(landmark: landmark)
                    
                    
                 
            }

            
        }
        .navigationBarTitle(Text("Landmark Book"))
        }
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView()
    }
}
