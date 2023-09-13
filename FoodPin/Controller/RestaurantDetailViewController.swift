//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by mohamed mahmoud on 12/09/2023.
//

import UIKit

class RestaurantDetailViewController: UIViewController {

    
    @IBOutlet var restaurantImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    
    var restaurant : Restaurant?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        if let restaurant {
            restaurantImageView.image = UIImage(named: restaurant.image)
            titleLabel.text = restaurant.name
            typeLabel.text = restaurant.type
            locationLabel.text = restaurant.location
        }
        
    }

}
