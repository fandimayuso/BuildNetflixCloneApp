//
//  Movie.swift
//  BuildNetflixClone
//
//  Created by Apple on 26/5/21.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}
