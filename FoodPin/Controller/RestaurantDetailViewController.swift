//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by mohamed mahmoud on 12/09/2023.
//

import UIKit

class RestaurantDetailViewController: UIViewController {

    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var headerView: RestaurantDetailHeaderView!
    
    var restaurant : Restaurant!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        //navigationController?.navigationBar.prefersLargeTitles = false
            // Configure header view
            headerView.nameLabel.text = restaurant.name
            headerView.typeLabel.text = restaurant.type
            headerView.headerImageView.image = UIImage(named: restaurant.image)
            let heartImage = restaurant.isFavorite ? "heart.fill" : "heart"
            headerView.heartButton.tintColor = restaurant.isFavorite ? .systemYellow : .white
            headerView.heartButton.setImage(UIImage(systemName: heartImage), for: .normal)
        
    }

}
