//
//  Landmark.swift
//  Landmarks
//
//  Created by Giles Lemmon on 6/19/22.
//

import Foundation
import SwiftUI
import CoreLocation
//this is the strucure
//all landmarks get read into one of these structs

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    //this basically just converts the below struct into ccllocationCoordinate2d object
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
}
