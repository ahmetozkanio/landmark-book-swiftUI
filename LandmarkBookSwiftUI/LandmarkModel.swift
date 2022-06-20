//
//  LandmarkModel.swift
//  LandmarkBookSwiftUI
//
//  Created by Ahmet Ozkan on 20.06.2022.
//

import SwiftUI
import CoreLocation

struct Landmark: Identifiable{
    
    var id: Int
    var name: String
    var imageName: String
    var country : String
    var category : String
    var coordinates : Coordinates
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
}

struct Coordinates {
    var latitude : Double
    var longitude : Double
}


let eiffelLandmark = Landmark(id: 0, name: "Eiffel", imageName: "eiffel", country: "France", category: "Tower", coordinates: Coordinates(latitude: 48.8539373, longitude: 2.2825966))

let colesseumLandmark = Landmark(id: 1, name: "Colesseum", imageName: "colesseum", country: "Italy", category: "History Area", coordinates: Coordinates(latitude: 41.8902141, longitude: 12.4880037))

let londonBridgeLandmark = Landmark(id: 2, name: "London Bridge", imageName: "londonbridge", country: "UK", category: "Bridge", coordinates: Coordinates(latitude: 51.5079145, longitude: -0.0899163))

let pisaLandmark = Landmark(id: 3, name: "Pisa", imageName: "pisa", country: "Italy", category: "Tower", coordinates: Coordinates(latitude: 43.7068534, longitude: 10.3253373))

let sydneyLandmark = Landmark(id: 4, name: "Opera House", imageName: "sydney", country: "Australia", category: "Opera House", coordinates: Coordinates(latitude: 33.8458285, longitude:  150.3700928))

let landmarkArray = [eiffelLandmark,colesseumLandmark,londonBridgeLandmark,pisaLandmark,sydneyLandmark]
