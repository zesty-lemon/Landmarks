//
//  ModelData.swift
//  Landmarks
//
//  Created by Giles Lemmon on 6/19/22.
//

import Foundation
//this loads in the json array and puts it into the struct

import Combine

//observableObject means views will get updated if the objects value changes
final class ModelData: ObservableObject {
    //Published means changes get reported
    //so views can be updated
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}



func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
