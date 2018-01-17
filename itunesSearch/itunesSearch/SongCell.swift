//
//  SongCell.swift
//  itunesSearch
//
//  Created by Henry Moran on 1/16/18.
//  Copyright © 2018 Henry Moran. All rights reserved.
//

import UIKit

class SongCell: UITableViewCell {
    
    static let reuseIdentifier = "SongCell"
    
    @IBOutlet weak var songRuntimeLabel: UILabel!
    @IBOutlet weak var songTitleLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
