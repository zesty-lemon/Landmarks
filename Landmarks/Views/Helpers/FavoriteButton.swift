//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Giles Lemmon on 6/30/22.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            //label isn't used here since you are using the iconOnly label style
            //Accessability uses it for voiceover
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .blue : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
            .previewLayout(.fixed(width: 100, height: 50))
    }
}
