//
//  AlbumCell.swift
//  itunesSearch
//
//  Created by Henry Moran on 1/9/18.
//  Copyright © 2018 Henry Moran. All rights reserved.
//

import UIKit

class AlbumCell: UITableViewCell {
    
    static let reuseIdentifier = "AlbumCell"

    @IBOutlet weak var artworkView: UIView!
    @IBOutlet weak var albumTitleLabel: UIStackView!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
