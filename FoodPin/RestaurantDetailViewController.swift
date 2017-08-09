//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by Chung-Chan Wu on 2017/8/9.
//  Copyright © 2017年 JNN Studio. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController {

    @IBOutlet weak var restaurantImageView: UIImageView!
    var restaurantImage = ""
    @IBOutlet weak var restaurantNameLabel: UILabel!
    var restaurantName = ""
    @IBOutlet weak var restaurantTypeLabel: UILabel!
    var restaurantType = ""
    @IBOutlet weak var restaurantLocationLabel: UILabel!
    var restaurantLocation = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        restaurantImageView.image = UIImage(named: restaurantImage)
        restaurantNameLabel.text = restaurantName
        restaurantLocationLabel.text = restaurantLocation
        restaurantTypeLabel.text = restaurantType
        //restaurantName
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
