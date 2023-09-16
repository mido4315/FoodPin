//
//  RestaurantDetailHeaderView.swift
//  FoodPin
//
//  Created by mohamed mahmoud on 13/09/2023.
//

import UIKit

class RestaurantDetailHeaderView: UIView {

    @IBOutlet var ratingImageView: UIImageView!
    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel! {
        didSet {
            nameLabel.adjustsFontForContentSizeCategory = true
            nameLabel.numberOfLines = 0
            if let customFont = UIFont(name: "Nunito-Bold", size: 40.0) {
                nameLabel.font = UIFontMetrics(forTextStyle: .title1).scaledFont(for:customFont)
            }
        }
    }
    @IBOutlet var typeLabel: UILabel! {
        didSet {
            typeLabel.adjustsFontForContentSizeCategory = true
            typeLabel.numberOfLines = 0
            if let customFont = UIFont(name: "Nunito-Bold", size: 20.0){
                typeLabel.font = UIFontMetrics(forTextStyle: .headline).scaledFont(for: customFont)
                
            }
        }
    }
    @IBOutlet var heartButton: UIButton!


}
