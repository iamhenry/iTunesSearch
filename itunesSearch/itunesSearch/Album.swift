//
//  Album.swift
//  itunesSearch
//
//  Created by Henry Moran on 1/5/18.
//  Copyright © 2018 Henry Moran. All rights reserved.
//

import Foundation

class Album {
    let id: Int
    let artistName: String
    let name: String
    let censorName: String
    let artworkURL: String
    let isExplicit: Bool
    let numberOfTracks: Int
    let releaseDate: Date
    let primaryGenre: Genre
    var songs = [Song]()
    
    init(id: Int, artistName: String, censorName: String, artworkURL: String, isExplicit: Bool, numberOfTracks: Int, releaseDate: Date, primaryGenre: Genre) {
        self.id = id
        self.artistName = artistName
        self.censorName = censorName
        self.artworkURL = artworkURL
        self.isExplicit = isExplicit
        self.numberOfTracks = numberOfTracks
        self.releaseDate = releaseDate
        self.primaryGenre = primaryGenre
    }
}
