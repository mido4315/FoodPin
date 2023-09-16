//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by mohamed mahmoud on 15/09/2023.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var rateButtons: [UIButton]!
    @IBOutlet var closeButton: UIButton!
    
    var restaurant = Restaurant()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageBluring()
  
        let moveUpTransform = CGAffineTransform.init(translationX: 0, y: -600)
        let moveRightTransform = CGAffineTransform.init(translationX: 600, y: 0)
        let scaleUpTransform = CGAffineTransform.init(scaleX: 5.0, y: 5.0)
        let moveScaleTransform = scaleUpTransform.concatenating(moveRightTransform)
        // Make the button invisible and move off the screen
        for rateButton in rateButtons {
            rateButton.transform = moveScaleTransform
            rateButton.alpha = 0
        }
        closeButton.transform = moveUpTransform
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        var delay = 0.1
        for rateButton in self.rateButtons {
            UIView.animate(withDuration: 1,delay: delay, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.3, options: [],animations: {
                rateButton.alpha = 1
                rateButton.transform = .identity
        },completion: nil)
            delay += 0.05
    }
        
        // animate the close button
        UIView.animate(withDuration: 0.6) {
            self.closeButton.transform = .identity
        }
        
    }
    
    func imageBluring() {
        backgroundImageView.image = UIImage(named: restaurant.image)
        // Applying the blur effect
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
