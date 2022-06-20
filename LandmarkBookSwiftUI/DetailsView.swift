//
//  ContentView.swift
//  LandmarkBookSwiftUI
//
//  Created by Ahmet Ozkan on 20.06.2022.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenLandMark : Landmark
    
    var body: some View {
        
        VStack{
            MapView(coordinate: chosenLandMark.locationCoordinate)
            
                .edgesIgnoringSafeArea(.top)
                
                .frame(height:UIScreen.main.bounds.width)
            CircleImageView(image: Image(chosenLandMark.imageName))
               
            
            
                .frame(width:UIScreen.main.bounds.width * 0.9)
                .offset(y:UIScreen.main.bounds.height * -0.15)
                .padding(.bottom,UIScreen.main.bounds.height * -0.15)
            VStack(alignment: .leading){
                    Text(chosenLandMark.name)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                
                HStack{
                    Text(chosenLandMark.country)
                        .font(.subheadline)
                    
                    Spacer()
                    Text(chosenLandMark.category)
                }
                
            }.padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      
        DetailsView(chosenLandMark: londonBridgeLandmark)
      
        
    }
}
