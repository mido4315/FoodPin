//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by mohamed mahmoud on 12/09/2023.
//

import UIKit

class RestaurantDetailViewController: UIViewController {

    
    @IBOutlet var restaurantImageView: UIImageView!
    var restaurantImageName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        restaurantImageView.image = UIImage(named: restaurantImageName)
    }

}
