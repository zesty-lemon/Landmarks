//
//  ContentView.swift
//  Landmarks
//
//  Created by Giles Lemmon on 5/22/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //this is the view that gets loaded first
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
