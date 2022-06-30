//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Giles Lemmon on 6/19/22.
//

import SwiftUI

struct LandmarkList: View {
    //state modifier is always private
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                //you can put toggles inside a list
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetails(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
    /*
     you can embed an array of previews for different devices
     here.  
     static var previews: some View {
         ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
             LandmarkList()
                 .previewDevice(PreviewDevice(rawValue: deviceName))
         }
     */
}
