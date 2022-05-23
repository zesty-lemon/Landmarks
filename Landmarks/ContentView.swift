//
//  ContentView.swift
//  Landmarks
//
//  Created by Giles Lemmon on 5/22/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Turtle Rock")
                .font(.title)
                .foregroundColor(.green)
            Text("Joshua Tree National Park")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
