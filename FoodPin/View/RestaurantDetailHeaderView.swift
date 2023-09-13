//
//  RestaurantDetailHeaderView.swift
//  FoodPin
//
//  Created by mohamed mahmoud on 13/09/2023.
//

import UIKit

class RestaurantDetailHeaderView: UIView {

    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel! {
        didSet {
            nameLabel.numberOfLines = 0
        }
    }
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var heartButton: UIButton!


}
