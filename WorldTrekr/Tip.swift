//
//  Tip.swift
//  WorldTrekr
//
//  Created by Kitwana Akil on 7/10/23.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
    
}
