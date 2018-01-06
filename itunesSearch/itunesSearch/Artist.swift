//
//  Artist.swift
//  itunesSearch
//
//  Created by Henry Moran on 1/5/18.
//  Copyright © 2018 Henry Moran. All rights reserved.
//

import Foundation

class Artist {
    let id: Int
    let name: String
    let primaryGenre: Genre
    var albums: [Album]
    
    init(id: Int, name: String, primaryGenre: Genre, albums: [Album]) {
        self.id = id
        self.name = name
        self.primaryGenre = primaryGenre
        self.albums = albums
    }
}
