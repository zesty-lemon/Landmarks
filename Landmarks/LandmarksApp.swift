//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Giles Lemmon on 5/22/22.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
