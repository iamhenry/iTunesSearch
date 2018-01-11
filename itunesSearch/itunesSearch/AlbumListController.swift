//
//  AlbumListController.swift
//  itunesSearch
//
//  Created by Henry Moran on 1/9/18.
//  Copyright © 2018 Henry Moran. All rights reserved.
//

import UIKit

class AlbumListController: UITableViewController {
    
    private struct Constants {
        static let AlbumCellHeight: CGFloat = 80
    }
    
    var artist: Artist!
    
    lazy var dataSource: AlbumListDataSource = {
       return AlbumListDataSource(albums: self.artist.albums)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = artist.name
        
        tableView.dataSource = dataSource
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constants.AlbumCellHeight
    }
}
