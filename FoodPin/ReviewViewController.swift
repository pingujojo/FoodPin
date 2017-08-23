//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by Chung-Chan Wu on 2017/8/23.
//  Copyright © 2017年 JNN Studio. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {
    
    @IBOutlet var backgroundImageView: UIImageView! // UIImage vs UIImageView?
    @IBOutlet var containerView: UIView!
    
    var restaurantImageName: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // set background image.
        backgroundImageView.image = UIImage(named: restaurantImageName)
        
        // 1. add a blur effect for background image.
        let blurEffect = UIBlurEffect(style: .light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        // 2. set for view animation.
        // 2-1. init state of container view (0,0)
        //containerView.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        
        // 2-2. to coressponding with animation 3
        //containerView.transform = CGAffineTransform(translationX: 0.0, y: -1000.0)
        
        // 2-3. combine with 2 transforms
        let scaleTransform = CGAffineTransform.init(scaleX: 0.0, y: 0.0)
        let translateTransform = CGAffineTransform.init(translationX: 0.0, y: -1000.0)
        let combineTransform = scaleTransform.concatenating(translateTransform)
        containerView.transform = combineTransform
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // animation 1
//        UIView.animate(withDuration: 0.3, animations: {
//            self.containerView.transform = CGAffineTransform.identity // set final state of container view. .identity means the original size of this view.
//        })
        
        // animation 2
//        UIView.animate(withDuration: 0.4, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.2, options: .curveEaseIn, animations: {
//            self.containerView.transform = CGAffineTransform.identity
//        }, completion: nil)
        
        // animation 3
        UIView.animate(withDuration: 0.3, animations: {
            self.containerView.transform = CGAffineTransform.identity // set final state of container view. .identity means the original size of this view.
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
