//
//  Locations.swift
//  WorldTrekr
//
//  Created by Kitwana Akil on 7/10/23.
//

import Foundation


class Locations: ObservableObject {
    let places: [Location]
    
    var primary: Location {
        places[0]
    }
    
    // There are better ways to write this code
    // this is simply a quick way to do this
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
